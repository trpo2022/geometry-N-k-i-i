G = gcc
GF = -c -Wall
VPATH = src/geometry src

OBJG = Circle_P.o Circle_S.o Triangle_P.o Triangle_S.o
OBJO = Numbers.o Opentest.o PrintCircle.o PrintTriangle.o
DIRG = src/libgeometry/geometry.h
DIRO = src/libothers/libothers.h

all: geometry

geometry: main.o $(OBJG) $(OBJO)
	$(G) $^  -o

main.o: main.c 
	$(G) $(GF) $^

Circle_P.o: Circle_P.c 
	$(G) $(GF) $^ 

Circle_S.o:	Circle_S.c 
	$(G) $(GF) $^ 

Triangle_P.o: Triangle_P.c 
	$(G) $(GF) $^ 

Triangle_S.o: Triangle_S.c 
	$(G) $(GF) $^ 



Numbers.o: Numbers.c
	$(G) $(GF) $^ 

Opentest.o: Opentest.c
	$(G) $(GF) $^ 

PrintCircle.o: PrintCircle.c
	$(G) $(GF) $^ 

PrintTriangle.o: PrintTriangle.c 
	$(G) $(GF) $^ 


clean:
	rm *.o
