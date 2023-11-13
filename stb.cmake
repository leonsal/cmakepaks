include(FetchContent)
FetchContent_Declare(
    stb
    GIT_REPOSITORY "https://github.com/nothings/stb"
    GIT_TAG "master"
)
message("Fetching stb...")
FetchContent_MakeAvailable(stb)

