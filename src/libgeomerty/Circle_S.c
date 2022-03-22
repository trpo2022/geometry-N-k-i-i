#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "geometry.h"

float SC(float r) {
  float Sc;
  Sc = M_PI * pow(r, 2);
  return Sc;
}