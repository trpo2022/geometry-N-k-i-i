#include <stdio.h>
#include <stdlib.h>

#include "libgeomerty/geometry.h"
#include "libothers/libothers.h"

void printC(float x, float y, float r) {
  printf(
      "Circle (%0.0f %0.0f)\n"
      "  R = %0.2f\n"
      "  Perimeter = %0.2f"
      "  Area = %0.2f",
      c.x, c.y, c.r, PC(r), SC(r));
}