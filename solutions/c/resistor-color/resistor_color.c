#include "resistor_color.h"

int color_code(resistor_band_t rb) {
    return rb;
}

int* colors() {
    static int colors[10];
    for(int i = BLACK; i <= WHITE; i++)
        colors[i] = i;
    return colors;
}
