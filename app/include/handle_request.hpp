#ifndef HANDLE_REQUEST_HPP
#define HANDLE_REQUEST_HPP

#include <boost/beast.hpp>
#include <nlohmann/json.hpp>
#include <g3log/g3log.hpp>

#include "misc.h"

using json = nlohmann::json;
// This function produces an HTTP response for the given
// request. The type of the response object depends on the
// contents of the request, so the interface requires the
// caller to pass a generic lambda for receiving the response.
template<
    class Body, class Allocator,
    class Send>
void
handle_request(
    boost::beast::string_view doc_root,
    boost::beast::http::request<Body, boost::beast::http::basic_fields<Allocator>>&& req,
    Send&& send)
{
    // Returns a bad request response
    auto const bad_request =
        [&req](boost::beast::string_view why)
        {
            boost::beast::http::response<boost::beast::http::string_body> res{ 
                boost::beast::http::status::bad_request, req.version() };
            res.set(boost::beast::http::field::server, BOOST_BEAST_VERSION_STRING);
            res.set(boost::beast::http::field::content_type, "text/html");
            res.keep_alive(req.keep_alive());
            res.body() = why.to_string();
            res.prepare_payload();
            return res;
        };

    // Returns a not found response
    auto const not_found =
        [&req](boost::beast::string_view target)
        {
            boost::beast::http::response<boost::beast::http::string_body> res{ 
                boost::beast::http::status::not_found, req.version() };
            res.set(boost::beast::http::field::server, BOOST_BEAST_VERSION_STRING);
            res.set(boost::beast::http::field::content_type, "text/html");
            res.keep_alive(req.keep_alive());
            res.body() = "The resource '" + target.to_string() + "' was not found.";
            res.prepare_payload();
            return res;
        };

    // Returns a server error response
    auto const server_error =
        [&req](boost::beast::string_view what)
        {
            boost::beast::http::response<boost::beast::http::string_body> res{ 
                boost::beast::http::status::internal_server_error, req.version() };
            res.set(boost::beast::http::field::server, BOOST_BEAST_VERSION_STRING);
            res.set(boost::beast::http::field::content_type, "text/html");
            res.keep_alive(req.keep_alive());
            res.body() = "An error occurred: '" + what.to_string() + "'";
            res.prepare_payload();
            return res;
        };

    // Make sure we can handle the method
    if (req.method() != boost::beast::http::verb::get &&
        req.method() != boost::beast::http::verb::head)
        return send(bad_request("Unknown HTTP-method"));

    // Request path must be absolute and not contain "..".
    if (req.target().empty() ||
        req.target()[0] != '/' ||
        req.target().find("..") != boost::beast::string_view::npos)
        return send(bad_request("Illegal request-target"));

    // Build the path to the requested file
    std::string path = path_cat(doc_root, req.target());
    if (req.target().back() == '/')
        path.append("index.html");

    // Attempt to open the file
    boost::beast::error_code ec;
    boost::beast::http::string_body::value_type body;
    //body.open(path.c_str(), boost::beast::file_mode::scan, ec);

    json my_json = json{
        { "key1", "value1" },
        { "key2", false },
        { "key3", json::array({ 1, 2, 3 }) },
    };
    LOG(INFO) << req.method() << req.target();
    body = my_json.dump();

    // Handle the case where the file doesn't exist
    if (ec == boost::system::errc::no_such_file_or_directory)
        return send(not_found(req.target()));

    // Handle an unknown error
    if (ec)
        return send(server_error(ec.message()));

    // Cache the size since we need it after the move
    auto const size = body.size();

    // Respond to HEAD request
    if (req.method() == boost::beast::http::verb::head)
    {
        boost::beast::http::response<boost::beast::http::empty_body> res{ 
            boost::beast::http::status::ok, req.version() };
        res.set(boost::beast::http::field::server, BOOST_BEAST_VERSION_STRING);
        res.set(boost::beast::http::field::content_type, mime_type(path));
        res.content_length(size);
        res.keep_alive(req.keep_alive());
        return send(std::move(res));
    }

    // Respond to GET request
    boost::beast::http::response<boost::beast::http::string_body> res{
        std::piecewise_construct,
        std::make_tuple(std::move(body)),
        std::make_tuple(boost::beast::http::status::ok, req.version()) };
    res.set(boost::beast::http::field::server, BOOST_BEAST_VERSION_STRING);
    res.set(boost::beast::http::field::content_type, mime_type(path));
    res.content_length(size);
    res.keep_alive(req.keep_alive());
    return send(std::move(res));
}

#endif //HANDLE_REQUEST_HPP
