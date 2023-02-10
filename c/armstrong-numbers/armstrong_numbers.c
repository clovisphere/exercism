#include <math.h>
#include "armstrong_numbers.h"

bool is_armstrong_number(int candidate) {
    int sum = 0, rem = candidate, exp = log10(candidate) + 1;
    while (rem != 0) {
        sum += pow(rem % 10, exp);
        rem /= 10;
    }
    return candidate == sum;
}
