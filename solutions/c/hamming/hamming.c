#include <string.h>
#include "hamming.h"

int compute(const char *lhs, const char *rhs) {
    if(!lhs || !rhs) return 0;
    if(strlen(lhs) != strlen(rhs)) return -1;
    int diff = 0;
    while (*lhs != '\0') {
        if (*lhs != *rhs) ++diff;
        ++lhs, ++rhs;
    }
    return diff;
}
