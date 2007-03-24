# Makefile for 4digits
all: 4digits-text

CC = gcc
CFLAGS = -Wall -std=c99 -pedantic -g
SHELL = /bin/sh

4digits-text: 4digits-text.c
	$(CC) $(CFLAGS) 4digits-text.c -o 4digits-text

install: 4digits.6 4digits.glade 4digits_logo.png 4digits_logo.xcf 4digits-text 4digits doc/
	install -d $(DESTDIR)/usr/share/man/man6/ $(DESTDIR)/usr/share/4digits/ $(DESTDIR)/usr/games/ $(DESTDIR)/usr/share/doc/4digits/ $(DESTDIR)/usr/share/doc/4digits/images/
	install -m 644 4digits.6 $(DESTDIR)/usr/share/man/man6/
	install -m 644 4digits.glade 4digits_logo.png 4digits_logo.xcf $(DESTDIR)/usr/share/4digits/
	install 4digits-text 4digits $(DESTDIR)/usr/games/
	# install COPYING $(DESTDIR)/usr/share/doc/4digits/
	cp -af doc/* $(DESTDIR)/usr/share/doc/4digits/
