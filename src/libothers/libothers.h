#ifndef LIBOTHERS_h
#define LIBOTHERS_h

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#define N 80
#define M 5

double numbers(char *str, int *i);  //функция проверки числа
void opentest(FILE *file);  // функция проверки открытия файла
//функция вывода данных треугольника
void printT(float x1, float y1, float x2, float y2, float x3, float y3);
//функция вывода данных окружности
void printC(float x, float y, float r);

#endif