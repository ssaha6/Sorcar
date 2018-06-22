.PHONY: clear

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),CYGWIN_NT-10.0)
	Z3_INCLUDE=/cygdrive/z/z3/z3-4.5.0-x64-win/include
	Z3_BIN=/cygdrive/z/z3/z3-4.5.0-x64-win/bin
	CXX=x86_64-w64-mingw32-g++.exe
	# CXX=i686-w64-mingw32-g++.exe
else ifeq ($(UNAME_S),Linux)
	Z3_INCLUDE=/home/me/mac/z3/z3-4.5.0-x64-ubuntu-14.04/include
	Z3_BIN=/home/me/mac/z3/z3-4.5.0-x64-ubuntu-14.04/bin
	CXX=g++-6
	export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/me/mac/z3/z3-4.5.0-x64-ubuntu-14.04/bin/ 
else ifeq ($(UNAME_S),Darwin)
	Z3_INCLUDE=/Users/me/z3/z3-4.5.0-x64-osx-10.11.6/include
	Z3_BIN=/Users/me/z3/z3-4.5.0-x64-osx-10.11.6/bin
	CXX=g++-mp-6
	#LD_LIBRARY_PATH=/home/me/mac/DryadInv/sorcar/Learners/z3-4.5.0-x64-ubuntu-14.04/bin/ 
	#export LD_LIBRARY_PATH
endif

CPPFLAGS += -static -static-libgcc -static-libstdc++
CPPFLAGS += -I ../include
CPPFLAGS += -std=c++14 -Wall -Ofast  


##################################

OBJS = boogie_io.o \
       horn_constraint.o \
       datapoint.o


all: horndini

horndini: $(OBJS)
	$(CXX) $(CPPFLAGS) $(LDFLAGS) -o horndini horndini.cpp $(OBJS)

%.o: %.cpp
	$(CXX) $(CPPFLAGS) -c $< -o $@
   
clean:
	rm -f *.o
	rm -f *.exe
	rm -f horndini
