G = gcc
GF = -Wall -Werror -c
#VPATH := src/geometry src/libgeometry src/libothers
OBJMAIN = src/geometry/
OBJLIBG = src/libgeomerty/
OBJLIBO = src/libothers/

OBJG = Circle_P$(O) Circle_S$(O) Triangle_P$(O) Triangle_S$(O)
OBJO = Numbers$(O) Opentest$(O) PrintCircle$(O) PrintTriangle$(O)

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




all: geometry

geometry: $(M).o $(OBJG) $(OBJO)
	$(G) -o geometry  $^ -lm


main$(O): $(M)$(C)
	$(G) $(GF) $^ 


Circle_P$(O): $(CP)$(C)
	$(G) $(GF) $^ 

Circle_S$(O): $(CS)$(C)
	$(G) $(GF) $^ 

Triangle_P$(O): $(TP)$(C)
	$(G) $(GF) $^ 

Triangle_S$(O): $(TS)$(C)
	$(G) $(GF) $^ 



Numbers$(O): $(NUM)$(C)
	$(G) $(GF) $^ 

Opentest$(O): $(OP)$(C)
	$(G) $(GF) $^ 

PrintCircle$(O): $(PC)$(C)
	$(G) $(GF) $^ 

PrintTriangle$(O): $(PT)$(C)
	$(G) $(GF) $^ 


clean:
	rm *.o
