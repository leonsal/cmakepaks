include(FetchContent)
FetchContent_Declare(
    linenoise
    GIT_REPOSITORY "https://github.com/antirez/linenoise"
    GIT_TAG "master"
)
message("Fetching linenoise...")
FetchContent_MakeAvailable(linenoise)

