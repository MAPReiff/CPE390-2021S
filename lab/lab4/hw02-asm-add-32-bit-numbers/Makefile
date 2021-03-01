CXX	:=	g++ --std=c++11 -g -O2
all: hw2setup hw2

# build the code with just C++ so you can see what the code should look like
# you can make your assembler code faster though
hw2setup: hw2.cc cppadd.cc
	 $(CXX) hw2.cc cppadd.cc -o hw2setup

hw2:  hw2.cc add.s
	$(CXX) hw2.cc add.s -o hw2  #link the two .o files together into a program

clean:
	rm hw2 hw2setup *.o
