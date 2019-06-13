#include <g3log/g3log.hpp>
#include <g3log/logworker.hpp>
#include <boost/asio/signal_set.hpp>

#include "misc.h"
#include "websocket_session.h"
#include "listener.h"
#include "handle_request.hpp"


int main(int argc, char* argv[])
{
	// Check command line arguments.
	/*if (argc != 5)
	{
		std::cerr <<
			"Usage: advanced-server <address> <port> <doc_root> <threads>\n" <<
			"Example:\n" <<
			"    advanced-server 0.0.0.0 8080 . 1\n";
		return EXIT_FAILURE;
	}
	auto const address = boost::asio::ip::make_address(argv[2]);
	auto const port = static_cast<unsigned short>(std::atoi(argv[2]));
	auto const doc_root = std::make_shared<std::string>(argv[3]);
	auto const threads = std::max<int>(1, std::atoi(argv[4]));*/

	auto worker = g3::LogWorker::createLogWorker();
	auto handle= worker->addDefaultLogger(argv[0], "logs/");
	g3::initializeLogging(worker.get());
	std::future<std::string> log_file_name = handle->call(&g3::FileSink::fileName);

	// Exmple of overriding the default formatting of log entry
	auto changeFormatting = handle->call(&g3::FileSink::overrideLogDetails, g3::LogMessage::FullLogDetailsToString);
	const std::string newHeader = "\t\tLOG format: [YYYY/MM/DD hh:mm:ss uuu* LEVEL THREAD_ID FILE->FUNCTION:LINE] message\n\t\t(uuu*: microseconds fractions of the seconds value)\n\n";
	// example of ovrriding the default formatting of header
	auto changeHeader = handle->call(&g3::FileSink::overrideLogHeader, newHeader);

	changeFormatting.wait();
	changeHeader.wait();


	auto const address = boost::asio::ip::make_address("0.0.0.0");
	auto const port = static_cast<unsigned short>(std::atoi("9999"));
    auto const doc_root = std::make_shared<std::string>("C:\\");
	auto const threads = std::max<int>(1, std::atoi("2"));

    LOG(INFO) << "serving http://" << address.to_string() << ":" << port;
    LOG(INFO) << "serving ws://" << address.to_string() << ":" << port;

	// The io_context is required for all I/O
	boost::asio::io_context ioc{ threads };

	// Create and launch a listening port
	std::make_shared<listener>(
		ioc,
		tcp::endpoint{ address, port },
		doc_root)->run();

	// Capture SIGINT and SIGTERM to perform a clean shutdown
	boost::asio::signal_set signals(ioc, SIGINT, SIGTERM);
	signals.async_wait(
		[&](boost::system::error_code const&, int)
	{
		// Stop the `io_context`. This will cause `run()`
		// to return immediately, eventually destroying the
		// `io_context` and all of the sockets in it.
		ioc.stop();
	});

	// Run the I/O service on the requested number of threads
	std::vector<std::thread> v;
	v.reserve(threads - 1);
	for (auto i = threads - 1; i > 0; --i)
		v.emplace_back(
			[&ioc]
	{
		ioc.run();
	});
	ioc.run();

	// (If we get here, it means we got a SIGINT or SIGTERM)

	// Block until all the threads exit
	for (auto& t : v)
		t.join();

	return EXIT_SUCCESS;
}
