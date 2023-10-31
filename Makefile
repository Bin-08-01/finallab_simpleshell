CC = gcc
CFLAGS = -Wall -Werror -Wextra -pedantic

SOURCE = $(wildcard *.c)
OBJECTS = $(patsubst %.c, %.o, $(SOURCE))
TARGET = shell

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJECTS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(TARGET)