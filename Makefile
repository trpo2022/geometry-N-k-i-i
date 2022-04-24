G = gcc
GF = -Wall -Werror -c -o
#VPATH := src/geometry src/libgeometry src/libothers
OBJMAIN = src/geometry/
OBJLIBG = src/libgeometry/
OBJLIBO = src/libothers/

OBJG = $(WAYOBJG)Circle_P$(O) $(WAYOBJG)Circle_S$(O) $(WAYOBJG)Triangle_P$(O) $(WAYOBJG)Triangle_S$(O)
OBJO = $(WAYOBJO)Numbers$(O) $(WAYOBJO)Opentest$(O) $(WAYOBJO)PrintCircle$(O) $(WAYOBJO)PrintTriangle$(O)

C = .c
O = .o

M = $(OBJMAIN)main
CP = $(OBJLIBG)Circle_P
CS = $(OBJLIBG)Circle_S
TP = $(OBJLIBG)Triangle_P
TS = $(OBJLIBG)Triangle_S
NUM = $(OBJLIBO)Numbers
OP = $(OBJLIBO)Opentest
PC = $(OBJLIBO)PrintCircle
PT = $(OBJLIBO)PrintTriangle
TESTOBJ = obj/test/main/main.o obj/test/libtest/test.o

WAYOBJM = obj/scr/geometry/
WAYOBJG = obj/scr/libgeometry/
WAYOBJO = obj/scr/libothers/


all: geometry

geometry: $(WAYOBJM)main.o $(OBJG) $(OBJO)
	$(G) -o bin/geometry  $^ -lm


$(WAYOBJM)main$(O): $(M)$(C)
	$(G) $(GF) $@ $^ 


#Компиляция функций библиотеки libgeometry

$(WAYOBJG)Circle_P$(O): $(CP)$(C)
	$(G) $(GF) $@  $^ 

$(WAYOBJG)Circle_S$(O): $(CS)$(C)
	$(G) $(GF) $@ $^ 

$(WAYOBJG)Triangle_P$(O): $(TP)$(C)
	$(G) $(GF) $@ $^ 

$(WAYOBJG)Triangle_S$(O): $(TS)$(C)
	$(G) $(GF) $@ $^ 


#Компиляция функций библиотеки libothers

$(WAYOBJO)Numbers$(O): $(NUM)$(C)
	$(G) $(GF) $@ $^ 

$(WAYOBJO)Opentest$(O): $(OP)$(C)
	$(G) $(GF) $@ $^ 

$(WAYOBJO)PrintCircle$(O): $(PC)$(C)
	$(G) $(GF) $@ $^ 

$(WAYOBJO)PrintTriangle$(O): $(PT)$(C)
	$(G) $(GF) $@ $^ 


## Компиляция тестов

test: $(TESTOBJ) $(OBJG)
	$(G) -o filefortest $^ -lm

obj/test/main/main.o: test/main/main.c
	$(G) $(GF) $@ $^ 

obj/test/libtest/test.o: test/libtest/test.c
	$(G) $(GF) $@ $^ 


clean:
	rm *.o

