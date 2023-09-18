# --- makefile --- #
PACKAGE = app
VERSION = 1.0
TARNAME = $(PACKAGE)
DISTDIR = $(TARNAME)-$(VERSION)
CC = gcc
CFLAGS = -fprofile-arcs -ftest-coverage

all clean app:
	cd src && $(MAKE) $@

main.o: 
	cd src && $(MAKE) $@

functions.o: 
	cd src && $(MAKE) $@

coverage:
	# gcov $(SRC_DIR)/main.c $(SRC_DIR)/functions.c

.PHONY: all clean app
