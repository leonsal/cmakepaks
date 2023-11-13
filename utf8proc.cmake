include(FetchContent)
FetchContent_Declare(
    utf8proc
    GIT_REPOSITORY "https://github.com/JuliaStrings/utf8proc"
    GIT_TAG "master"
)
message("Fetching utf8proc..")
FetchContent_MakeAvailable(utf8proc)

