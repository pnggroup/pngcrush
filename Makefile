# Copyright (c) 2025 John Bowler
# Licensed under the terms of the include file "LICENSE"
#
# This is a Makefile for the POSIX 1003 "make" command
all: pngcrush

pngcrush.o: pngcrush.c pngcrush.h
clean::
	$(RM) pngcrush.o

pngcrush: pngcrush.o
	$(CC) -o $@ pngcrush.o -lpng -lz -lm
clean::
	$(RM) pngcrush
