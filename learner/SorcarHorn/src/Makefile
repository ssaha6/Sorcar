.PHONY: clear

OBJS = boogie_io.o \
	   datapoint.o \
       horn_constraint.o
       
CXX=g++

CPPFLAGS += -I ../include
# CPPFLAGS += -std=c++14 -Wall -g
CPPFLAGS += -std=c++14 -Wall -m64 -Ofast -flto -march=native -funroll-loops -DNDEBUG 

# Z3_INCLUDE ?= -I ../../../../z3/src/api/ -I ../../../../z3/src/api/c++/
# Z3_BIN ?= -L ../../../../z3/build/

Z3_INCLUDE ?= -I ../../../../z3/z3/src/api/ 
Z3_BIN ?= -L ../../../../z3/z3/build/

all: sorcar

%.o: %.cpp
	$(CXX) $(CPPFLAGS) -c $< -o $@

sorcar: $(OBJS)
	$(CXX) $(CPPFLAGS) $(LDFLAGS) -o sorcar sorcar.cpp $(OBJS)

sorcar_z3: $(OBJS)
	$(CXX) $(CPPFLAGS) $(Z3_INCLUDE) $(LDFLAGS) $(Z3_BIN) -o sorcar sorcar.cpp $(OBJS) -lz3


clean:
	rm -f *.o
	rm -f *.exe
	rm -f sorcar
