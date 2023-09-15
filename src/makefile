# --- src directory makefile --- #
CC = gcc
CFLAGS = -fprofile-arcs -ftest-coverage
INC_DIR = ../include
INC_FLAGS = -I$(INC_DIR)


all: app

app: main.o functions.o
	$(CC) $(CFLAGS) -o app main.o functions.o

main.o: main.c
	$(CC) $(CFLAGS) $(INC_FLAGS) -c $^

functions.o: functions.c
	$(CC) $(CFLAGS) $(INC_FLAGS) -c $^

clean:
	rm -f app main.o functions.o *.gcno *.gcda

.PHONY: all clean
