set (APP_NAME "${PROJECT_NAME}-app")

#configure directories
set (APP_PATH "${PROJECT_SOURCE_DIR}/app")
set (APP_SRC_PATH  "${APP_PATH}/src" )
set (APP_INCLUDE_PATH  "${APP_PATH}/include" )

#set includes
include_directories (
    ${LIBRARY_INCLUDE_PATH}
    ${THIRD_PARTY_INCLUDE_PATH}
    ${APP_INCLUDE_PATH}
    ${CMAKE_CURRENT_BINARY_DIR}
)


file (GLOB APP_SOURCE_FILES "${APP_SRC_PATH}/*.cpp")
message(STATUS ${APP_SOURCE_FILES} )

#set target executable

add_executable (${APP_NAME}
        ${APP_SOURCE_FILES}
        )

find_package(Threads)
#add the library
target_link_libraries (${APP_NAME}
        boost_system
        ${CMAKE_THREAD_LIBS_INIT}
        g3logger
        )
LINK_DIRECTORIES(nlohmann-json)
LINK_DIRECTORIES(g3log)