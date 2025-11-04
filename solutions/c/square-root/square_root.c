#include "square_root.h"

unsigned int square_root(unsigned int number) {
    int sqrt = 1;
    while((sqrt * sqrt) < number) ++sqrt;
    return sqrt;
}