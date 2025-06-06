PREFIX=/usr/local
BIN_NAME=vde-netemu

all: vde-netemu

vde-netemu: vde-netemu.o
	$(CC) -g -o $(BIN_NAME) -L$(PREFIX)/lib -I$(PREFIX)/include $(BIN_NAME).o -lvdeplug -lm

clean: 
	rm -f $(BIN_NAME) *.o

install: vde-netemu
	install $(BIN_NAME) $(PREFIX)/bin

debug:
	$(CC) -g $(BIN_NAME).c -L$(PREFIX)/lib -I$(PREFIX)/include -lvdeplug -lm 