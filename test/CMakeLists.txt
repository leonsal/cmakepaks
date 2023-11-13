cmake_minimum_required(VERSION 3.16 FATAL_ERROR)
project(cmakepaks C)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR})

include(FetchContent)
FetchContent_Declare(
    cmakepaks
    GIT_REPOSITORY "https://github.com/leonsal/cmakepaks"
    GIT_TAG "main"
)
message("Fetching cmakepaks...")
FetchContent_MakeAvailable(cmakepaks)
include(${cmakepaks_SOURCE_DIR}/linenoise.cmake)
include(${cmakepaks_SOURCE_DIR}/stb.cmake)
include(${cmakepaks_SOURCE_DIR}/glfw.cmake)
include(${cmakepaks_SOURCE_DIR}/utf8proc.cmake)
#set(FETCHCONTENT_QUIET FALSE)

set(SOURCES
    main.c
    ${linenoise_SOURCE_DIR}/linenoise.c
)

add_executable(tests ${SOURCES})
set_property(TARGET tests PROPERTY C_STANDARD  11)
target_include_directories(tests
    PUBLIC ${linenoise_SOURCE_DIR}
)
target_link_libraries(tests glfw utf8proc)

