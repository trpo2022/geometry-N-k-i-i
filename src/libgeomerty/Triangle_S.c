#include "geometry.h"

float ST(float x1, float y1, float x2, float y2, float x3, float y3) {
  float St;
  St = ((x2 - x1) * (y3 - y1) - (x3 - x1) * (y2 - y1)) / 2;
  return St;
}
