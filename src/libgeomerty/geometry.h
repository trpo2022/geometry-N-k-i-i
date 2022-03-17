#ifndef GEOMETRY_H
#define GEOMETRY_H

float SC(int r);
float PC(int r);
float ST(int x1, int y1, int x2, int y2, int x3, int y3);
float TP(int x1, int y1, int x2, int y2, int x3, int y3);

struct circle {
  float x, y, r;
} c;

struct triangle {
  float x1, x2, x3, y1, y2, y3;
} tr;

#endif