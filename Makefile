# compile windows exe with mingw from wsl

CC = /usr/bin/x86_64-w64-mingw32-gcc

OUT = program.exe

SRC = main.c

LIBS = -luser32

CFLAGS = -Wall -std=c99 -O2

program.exe: main.o
	$(CC) main.o -o $(OUT) $(LIBS)

main.o: main.c
	$(CC) $(CFLAGS) main.c -c main.o

run: $(OUT)
	wine $(OUT)

clean:
	rm -rf *.o
	rm -rf *.exe