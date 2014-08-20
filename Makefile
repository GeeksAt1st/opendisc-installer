CC = gcc
RC = windres
RM = rm
RMFLAGS = -f

CFLAGS = -Wall -O2
LFLAGS = -flto

all: res main

main:
	$(CC) -o inst.exe inst.c inst_rc.o $(CFLAGS) $(LFLAGS)

res:
	$(RC) -i inst.rc -o inst_rc.o

clean:
	$(RM) $(RMFLAGS) *.o inst.exe