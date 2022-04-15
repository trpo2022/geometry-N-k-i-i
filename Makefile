G = gcc
GF = -Wall -Werror -c 
VPATH = src/geometry:src/liboters:src/libgeometry
M = main
CP = Circle_P
CS = Circle_S
TP = Triangle_P
TS = Triangle_S
NUM = Numbers
OP = Opentest
PC = PrintCircle
PT = PrintTriangle

OBJG = $(CP).o $(CS).o $(TP).o $(TS).o
OBJO = $(NUM).o $(OP).o $(PC).o $(PT).o



all: geometry

geometry: $(M).o $(OBJG) $(OBJO)
	$(G) -o geometry  $^ 


$(M).o: $(M).c
	$(G) $(GF) $^ 


$(CP).o: $(CP).c 
	$(G) $(GF) $^ 

$(CS).o: $(CS).c 
	$(G) $(GF) $^ 

$(TP).o: $(TP).c 
	$(G) $(GF) $^ 

$(TS).o: $(TS).c 
	$(G) $(GF) $^ 



$(NUM).o: $(NUM).c
	$(G) $(GF) $^ 

$(OP).o: $(OP).c
	$(G) $(GF) $^ 

$(PC).o: $(PC).c
	$(G) $(GF) $^ 

$(PT).o: $(PT).c 
	$(G) $(GF) $^ 


clean:
	rm *.o
