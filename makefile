# --- makefile --- #
PACKAGE = app
VERSION = 1.0
TARNAME = $(PACKAGE)
DISTDIR = $(TARNAME)-$(VERSION)
CC = gcc
CFLAGS = -fprofile-arcs -ftest-coverage

all clean app:
	cd src && $(MAKE) $@


SRC_DIR = src
INC_DIR = include
SRCS = $(SRC_DIR)/main.c $(SRC_DIR)/functions.c

INC_FLAGS = -I$(INC_DIR)

app: $(SRC_DIR)/main.o $(SRC_DIR)/functions.o
	$(CC) $(CFLAGS) $(INC_FLAGS) -o app $(SRC_DIR)/main.o $(SRC_DIR)/functions.o

main.o: $(SRC_DIR)/main.c $(INC_DIR)/functions.h
	$(CC) $(CFLAGS) $(INC_FLAGS) -c $(SRC_DIR)/main.c -o $(SRC_DIR)/main.o

functions.o: $(SRC_DIR)/functions.c $(INC_DIR)/functions.h
	$(CC) $(CFLAGS) $(INC_FLAGS) -c $(SRC_DIR)/functions.c -o $(SRC_DIR)/functions.o

coverage:
	gcov $(SRC_DIR)/main.c $(SRC_DIR)/functions.c

clean: 
	rm $(SRC_DIR)/main.o $(SRC_DIR)/functions.o app
