CXX	:=	g++ -g 

hw1: main.o funcs.o
	$(CXX) main.o funcs.o -o hw1

main.o: main.cc
	$(CXX) -c $<

funcs.o: funcs.cc
	$(CXX) -c $<
