#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "libothers.h"

double numbers(char *str, int *i)  //функция проверки числа
{
  double result = 0;
  double div = 10;
  int sign = 1;

  while (result == 0) {
    if (str[*i] == '-')  //проверка на отрицательное число
    {
      sign = -1;
      ++*i;
    }

    while (str[*i] >= '0' && str[*i] <= '9') {
      result = result * 10.0 + (str[*i] - '0');

      ++*i;
    }

    if (str[*i] == '.')  //проверка на десятичную дробь
    {
      ++*i;

      while (str[*i] >= '0' && str[*i] <= '9') {
        result = result + (str[*i] - '0') / div;
        div *= 10;

        ++*i;
      }
    }
    ++*i;
  }

  return sign * result;
}
