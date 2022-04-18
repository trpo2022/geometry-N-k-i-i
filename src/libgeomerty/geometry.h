#ifndef GEOMETRY_H
#define GEOMETRY_H

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

float SC(float r);
float PC(float r);
float TS(float x1, float y1, float x2, float y2, float x3, float y3);
float TP(float x1, float y1, float x2, float y2, float x3, float y3);

struct circle {
  float x, y, r;
} c;

struct triangle {
  float x1, x2, x3, y1, y2, y3;
} tr;

#endif