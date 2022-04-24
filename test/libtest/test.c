#include "../libtest/testing.h"

void TestPerimetrCircle(void) {
  float CircleR[10] = {1, 2, 3.5, 4.36, 5.00, 6.1, 76, 8, 9.9, 956};
  float CircleP[10] = {6.28,  12.56,  21.99, 27.39, 31.41,
                       38.33, 477.52, 52.27, 62.20, 6006.73};
  for (int i = 0; i <= TEST_C; i++) {
    assert(CircleP[i] == CP(CircleR[i]));
  }
}

void TestSquareCircle(void) {
  float CircleR[10] = {1, 2, 3.5, 4.36, 5.00, 6.1, 76, 8, 9.9, 956};
  float CircleS[10] = {3.14,   12.56,    38.48,    59.72,    78.54,
                       116.89, 18145.84, 201.0619, 307.9075, 2871214.6235};
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