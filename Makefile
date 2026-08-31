CC = gcc
CFLAGS = -Wall -Wextra -pedantic -std=c99
SRC = $(wildcard src/*.c)
OBJ = $(SRC:.c=.o)
TARGET = mil-t

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

src/%.o: src/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f src/*.o $(TARGET)

.PHONY: all clean
