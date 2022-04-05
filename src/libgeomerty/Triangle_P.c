#include "geometry.h"

float PT(float x1, float y1, float x2, float y2, float x3, float y3) {
  float Pt;
  Pt = (sqrt(pow(x1 - y1, 2) + pow(x2 - y2, 2) + pow(x3 - y3, 2)));
  return Pt;
}