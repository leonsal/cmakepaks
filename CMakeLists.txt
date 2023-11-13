cmake_minimum_required(VERSION 3.16 FATAL_ERROR)
project(cmake_fetch C)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR})

include(linenoise.cmake)
include(glfw.cmake)
include(stb.cmake)
include(utf8proc.cmake)
#set(FETCHCONTENT_QUIET FALSE)

set(SOURCES
    main.c
    ${linenoise_SOURCE_DIR}/linenoise.c
)

add_executable(test ${SOURCES})
set_property(TARGET test PROPERTY C_STANDARD  11)
target_include_directories(test
    PUBLIC ${linenoise_SOURCE_DIR}
)
target_link_libraries(test glfw utf8proc)

