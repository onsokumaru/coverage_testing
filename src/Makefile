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

coverage:
	@echo "----- running coverage report -----"
	./app > /dev/null 2>&1
	./app --help > /dev/null 2>&1
	./app one two three four > /dev/null 2>&1
	gcov main.c
	gcov functions.c
	lcov --directory . --capture --output-file coverage.info
	genhtml coverage.info --output-directory coverage_html

clean:
	rm -f app main.o functions.o coverage.info *.gcno *.gcda
	rm -f app main.c.gcov functions.c.gcov 
	rm -rf coverage_html
	

.PHONY: all clean
