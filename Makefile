CC = gcc
CFLAGS = -c -Wall `pkg-config --cflags gtk+-3.0`  
LDFLAGS = `pkg-config gtk+-3.0 --libs`
SRC = src/main.c
OBJ = main.o
TARGET = bin/lab1

all: $(TARGET) $(SRC)
clean: 
	rm -rf bin/* *.o
$(TARGET): $(OBJ)
	$(CC) $(LDFLAGS) $(OBJ) -o $(TARGET)
$(OBJ): $(SRC)
	$(CC)  $(CFLAGS) $(SRC) -o $(OBJ)
