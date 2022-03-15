#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "geometry.h"

float ST(int x1, int y1, int x2, int y2, int x3, int y3) {
  float St;
  St = ((x2 - x1) * (y3 - y1) - (x3 - x1) * (y2 - y1)) / 2;
  return St;
}
