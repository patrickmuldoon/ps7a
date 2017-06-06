CC = g++ -std=c++11x
CFLAGS = -g -Wall -Werror -pedantic

all: ps7a

ps7a: RegexStartUp.o intouch.o
	$(CC) -o ps7a RegexStartUp.o intouch.o -lboost_regex -lboost_date_time

RegexStartUp.o: RegexStartUp.cpp intouch.cpp 
	$(CC) $(CFLAGS) -ansi -c RegexStartUp.cpp

intouch.o: intouch.cpp
	$(CC) $(CFLAGS) -ansi -c intouch.cpp

clean:
	rm -rf ps7a *.o *.~