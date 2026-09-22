CC = gcc

LDFLAGS =                   # linker flags if any

TARGET = decrypt_PO_break
LIB = pad_oracle.a
SRC = decrypt_PO_break.c

all: $(TARGET)

$(TARGET): $(SRC) $(LIB)
	$(CC) -o $@ $^ $(LDFLAGS)

clean:
	rm -f $(TARGET) *.o
