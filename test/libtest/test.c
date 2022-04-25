#include "../libtest/testing.h"

void TestPerimetrCircle(void) {
  float CircleR[10] = {1, 2, 3.5, 4.36, 5.00, 6.1, 76, 8, 9.9, 956};
  float CircleP[10] = {6.283185,  12.566371,  21.991148,  27.394690,
                       31.415926, 38.327431,  477.522095, 50.265484,
                       62.203533, 6006.725098};
  for (int i = 0; i <= TEST_C; i++) {
    assert(CircleP[i] == CP(CircleR[i]));
  }
}

void TestSquareCircle(void) {
  float CircleR[10] = {1, 2, 3.5, 4.36, 5.00, 6.1, 76, 8, 9.9, 956};
  float CircleS[10] = {3.141593,   12.566371,  38.484509,    59.720425,
                       78.539818,  116.898659, 18145.839844, 201.061935,
                       307.907471, 2871214.5};
  for (int i = 0; i <= TEST_C; i++) {
    assert(CircleS[i] == CS(CircleR[i]));
  };
}

void TestPerimetrTriangle(void) {
  float Triangle[6][6] = {{1, 2, 2, 3, 4, 6},
                          {2, 5, 7, 4, 3, 2},
                          {3, 2, 4, 3, 2, 5},
                          {5, 1, 2, 5, 3, 5},
                          {2, 2, 5, 5, 1, 1}};
  float TriangleP[] = {};
  for (int i = 0; i <= TEST_T; i++) {
    assert(TriangleP[i] == TP(Triangle[i][1], Triangle[i][2], Triangle[i][3],
                              Triangle[i][4], Triangle[i][5], Triangle[i][6]));
  }
}

void TestSquareTriangle(void) {
  float Triangle[6][6] = {{1, 2, 2, 3, 4, 6},
                          {2, 5, 7, 4, 3, 2},
                          {3, 2, 4, 3, 2, 5},
                          {5, 1, 2, 5, 3, 5},
                          {2, 2, 5, 5, 1, 1}};
  float TriangleS[] = {};
  for (int i = 0; i <= TEST_T; i++) {
    assert((TriangleS[i]) == TS(Triangle[i][0], Triangle[i][1], Triangle[i][2],
                                Triangle[i][3], Triangle[i][4],
                                Triangle[i][5]));
  }
}