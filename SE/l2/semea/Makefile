CC      := gcc
CFLAGS  := -Wall -Wextra -pedantic -std=c11 -O2
LDFLAGS := -pthread

SRCS    := $(wildcard *.c)

EXECS   := $(patsubst %.c,%,$(SRCS))

all: $(EXECS)

%: %.c
	$(CC) $(CFLAGS) $< $(LDFLAGS) -o $@

clean:
	rm -f $(EXECS)

.PHONY: all clean
