G = gcc
GF = -Wall -Werror -c
#VPATH := src/geometry src/libgeometry src/libothers
OBJMAIN = src/geometry/
OBJLIBG = src/libgeomerty/
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

WAYOBJM = obj/scr/geometry/
WAYOBJG = obj/scr/libgeometry/
WAYOBJO = obj/scr/libothers/


all: geometry

geometry: $(WAYOBJM)main.o $(OBJG) $(OBJO)
	$(G) -o geometry  $^ -lm


$(WAYOBJM)main$(O): $(M)$(C)
	$(G) $(GF) -o $@ $^ 


$(WAYOBJG)Circle_P$(O): $(CP)$(C)
	$(G) $(GF) -o $@  $^ 

$(WAYOBJG)Circle_S$(O): $(CS)$(C)
	$(G) $(GF) -o $@ $^ 

$(WAYOBJG)Triangle_P$(O): $(TP)$(C)
	$(G) $(GF) -o $@ $^ 

$(WAYOBJG)Triangle_S$(O): $(TS)$(C)
	$(G) $(GF) -o $@ $^ 



$(WAYOBJO)Numbers$(O): $(NUM)$(C)
	$(G) $(GF) -o $@ $^ 

$(WAYOBJO)Opentest$(O): $(OP)$(C)
	$(G) $(GF) -o $@ $^ 

$(WAYOBJO)PrintCircle$(O): $(PC)$(C)
	$(G) $(GF) -o $@ $^ 

$(WAYOBJO)PrintTriangle$(O): $(PT)$(C)
	$(G) $(GF) -o $@ $^ 

clean:
	rm *.o

