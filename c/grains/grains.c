#include <math.h>
#include "grains.h"


#define NUMBER_OF_SQUARE_ON_A_CHESSBOARD 64

uint64_t square(uint8_t index) {
    return pow(2, index - 1);
}

uint64_t total(void) {
    uint64_t sq = 1, sum = 0;
    for(; sq <= NUMBER_OF_SQUARE_ON_A_CHESSBOARD; sq++) {
        sum += square(sq);
    }
    return sum;
}
