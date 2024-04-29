CC=gcc
CFLAGS=-Wall -Wextra -g
LDFLAGS=

TARGET=hello
OBJ=hello.o

all:$(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(LDFLAGS) -o $@ $^

$(OBJ): src/hello.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f $(TARGET) $(OBJ)

.PHONY: all clean
