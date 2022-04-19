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

WAYOBJM = obj/scr/geometry/
WAYOBJGL = obj/scr/libothers/
WAYOBJOL = obj/scr/libothers/


all: geometry

geometry: $(M).o $(OBJG) $(OBJO)
	$(G) -o geometry  $^ -lm


$(WAYOBJM)main$(O): $(M)$(C)
	$(G) $(GF) $^ 


$(WAYOBJGL)Circle_P$(O): $(CP)$(C)
	$(G) $(GF) $^ 

$(WAYOBJGL)Circle_S$(O): $(CS)$(C)
	$(G) $(GF) $^ 

$(WAYOBJGL)Triangle_P$(O): $(TP)$(C)
	$(G) $(GF) $^ 

$(WAYOBJGL)Triangle_S$(O): $(TS)$(C)
	$(G) $(GF) $^ 



$(WAYOBJOL)Numbers$(O): $(NUM)$(C)
	$(G) $(GF) $^ 

$(WAYOBJOL)Opentest$(O): $(OP)$(C)
	$(G) $(GF) $^ 

$(WAYOBJOL)PrintCircle$(O): $(PC)$(C)
	$(G) $(GF) $^ 

$(WAYOBJOL)PrintTriangle$(O): $(PT)$(C)
	$(G) $(GF) $^ 
