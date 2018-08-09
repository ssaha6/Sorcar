.PHONY: clear

OBJS = boogie_io.o \
	   datapoint.o \
       horn_constraint.o

Z3_INCLUDE ?= ../../../z3/include
Z3_BINARY ?= ../../../z3/bin


CPPFLAGS += -I ../include -I $(Z3_INCLUDE)
CPPFLAGS += -std=c++14 -Wall -g

LDFLAGS += -L $(Z3_BINARY)


all: sorcar

sorcar: $(OBJS)
	$(CXX) $(CPPFLAGS) $(LDFLAGS) -o sorcar sorcar.cpp $(OBJS) -lz3

%.o: %.cpp
	$(CXX) $(CPPFLAGS) -c $< -o $@

clean:
	rm -f *.o
	rm -f *.exe
	rm -f sorcar
