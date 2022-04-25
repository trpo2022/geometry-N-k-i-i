#include "libothers.h"

void printT(float x1, float y1, float x2, float y2, float x3, float y3) {
  printf(
      "Triangle (%0.0f %0.0f, %0.0f %0.0f, %0.0f %0.0f, %0.0f %0.0f)\n"
      "  Perimeter =  %0.2f\n"
      "  Area = %0.2f\n",
      x1, y1, x2, y2, x3, y3, x1, y1, fabs(TP(x1, y1, x2, y2, x3, y3)),
      fabs(TS(x1, y1, x2, y2, x3, y3)));
}