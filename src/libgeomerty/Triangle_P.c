#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "geometry.h"

float TP(int x1, int y1, int x2, int y2, int x3, int y3) {
  float Pt;
  Pt = (sqrt(pow(x1 - y1, 2) + pow(x2 - y2, 2) + pow(x3 - y3, 2)));
  return Pt;
}