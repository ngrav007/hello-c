CC=gcc
CFLAGS=-Wall -Wextra -g
CFLAGS_SEC=-Wl, -O2 -D_FORTIFY_SOURCE=2
LDFLAGS=

TARGET=hello
OBJ=hello.o

all:$(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(LDFLAGS) -o $@ $^

$(OBJ): src/hello.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f $(TARGET) $(OBJ) hello-secure

hello-secure:
	$(CC) $(CFLAGS_SEC) -o hello-secure src/hello.c

.PHONY: all clean
