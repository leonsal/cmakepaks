#include <stdio.h>
#include "linenoise.h"

int main() {

    linenoiseHistorySetMaxLen(10);
    char* line;
    while ((line = linenoise(">")) != NULL) {
        linenoiseHistoryAdd(line);
    }
    return 0;
}

