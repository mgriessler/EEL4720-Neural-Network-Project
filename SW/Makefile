#CC = g++
CC = arm-linux-g++
CFLAGS = -Wall -ansi -g

OBJS = main.o Board.o

#set up C suffixes & relationship between .cpp and .o files
.SUFFIXES: .cpp

.cpp.o:
	$(CC) $(CFLAGS) -c $<


fabric: $(OBJS)
	${CC} -o zed_app $(OBJS)

main.o : Board.h
Board.o : Board.h

clean:
	rm -f *.o *~ zed_app

# DO NOT DELETE
