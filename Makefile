# --- makefile --- #
PACKAGE = app
VERSION = 1.0
TARNAME = $(PACKAGE)
DISTDIR = $(TARNAME)-$(VERSION)
CC = gcc
CFLAGS = -fprofile-arcs -ftest-coverage

all clean app coverage:
	cd src && $(MAKE) $@

main.o: 
	cd src && $(MAKE) $@

functions.o: 
	cd src && $(MAKE) $@

.PHONY: all clean app
