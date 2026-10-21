CC ?= cc
CFLAGS ?= -std=c11 -Wall -Wextra -Wpedantic -Werror

.PHONY: build run clean

build: hexview

hexview: main.c Makefile
	$(CC) $(CPPFLAGS) $(CFLAGS) main.c $(LDFLAGS) $(LDLIBS) -o $@

run: build
	./hexview

clean:
	$(RM) hexview

