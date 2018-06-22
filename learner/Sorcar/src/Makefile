.phony: clean check-env

# UNAME_S := $(uname -s)
# ifeq ($(UNAME_S),CYGWIN_NT-10.0)



# else ifeq ($(UNAME_S),Linux)
# 	Z3_INCLUDE=/home/me/mac/z3/z3-4.5.0-x64-ubuntu-14.04/include
# 	Z3_BIN=/home/me/mac/z3/z3-4.5.0-x64-ubuntu-14.04/bin
# 	CXX=g++-6
# 	export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/me/mac/z3/z3-4.5.0-x64-ubuntu-14.04/bin/ 
# else ifeq ($(UNAME_S),Darwin)
# 	Z3_INCLUDE=/Users/me/z3/z3-4.5.0-x64-osx-10.11.6/include
# 	Z3_BIN=/Users/me/z3/z3-4.5.0-x64-osx-10.11.6/bin
# 	CXX=g++-mp-6
# 	#LD_LIBRARY_PATH=/home/me/mac/DryadInv/sorcar/Learners/z3-4.5.0-x64-ubuntu-14.04/bin/ 
# 	#export LD_LIBRARY_PATH
# endif

Z3_INCLUDE=/cygdrive/d/z3/z3-4.5.0-x64-win/include
Z3_BIN=/cygdrive/d/z3/z3-4.5.0-x64-win/bin
CXX=x86_64-w64-mingw32-g++.exe




CPPFLAGS += -std=c++11 -Ofast -I ../include  -Wall #-DNDEBUG

# For Z3
CPPFLAGS += -I $(Z3_INCLUDE)
LDFLAGS += -L $(Z3_BIN)

all: sorcar

clean:
	-rm -rf c5.0.sorcar

check-env:
ifndef Z3_INCLUDE
    $(warning Z3_INCLUDE is undefined)
endif
ifndef Z3_BIN
    $(warning Z3_BIN is undefined)
endif

sorcar: check-env sorcar.cpp
	$(CXX) -o c5.0.sorcar $(CPPFLAGS) $(LDFLAGS) sorcar.cpp


#-static-libgcc -static-libstdc++ -Wl,-Bdynamic
#-static-libgcc -static-libstdc++ -m64 -std=c++11 -Ofast  -march=native  -mtune=native  -I. 


