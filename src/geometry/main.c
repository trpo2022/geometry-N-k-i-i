#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "libgeomerty/geometry.h"
#include "libothers/libothers.h"

int main() {
  int i;
  char m1[N] = "circle";
  char m2[N] = "triangle";
  char m3[N];

  FILE *file;
  file = fopen("figures.txt", "r");

  opentest(&file);

  while (fgets(m3, N, file) != NULL) {
    if (strncmp(m1, m3, M) == 0) {
      i = 7;
      c.x = chisla(m3, &i);
      c.y = chisla(m3, &i);
      c.r = chisla(m3, &i);
      printC(c.x, c.y, c.r);
    } else if (strncmp(m2, m3, M) == 0) {
      i = 9;
      tr.x1 = chisla(m3, &i);
      tr.y1 = chisla(m3, &i);
      tr.x2 = chisla(m3, &i);
      tr.y2 = chisla(m3, &i);
      tr.x3 = chisla(m3, &i);
      tr.y3 = chisla(m3, &i);
      printT(tr.x1, tr.y1, tr.x2, tr.y2, tr.x3, tr.y3);
    } else {
      printf("Error\n");
    }
  }
  return 0;
}
