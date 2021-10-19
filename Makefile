prog: main.o executive.o quash.o
	g++ -std=c++11 -g -Wall main.o executive.o quash.o -o prog

main.o: main.cpp executive.h
	g++ -std=c++11 -g -Wall -c main.cpp

executive.o: executive.h executive.cpp quash.h
	g++ -std=c++11 -g -Wall -c executive.cpp

quash.o: quash.h quash.cpp
	g++ -std=c++11 -g -Wall -c quash.cpp

clean:
	rm *.o prog