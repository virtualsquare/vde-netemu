PREFIX?=/usr/local

all: vde-netemu


vde-netemu: vde-netemu.o
	$(CC) -o vde-netemu vde-netemu.o -lvdeplug -lm

clean: 
	rm -f vde-netemu *.o

install: vde-netemu
	install vde-netemu $(PREFIX)/bin
