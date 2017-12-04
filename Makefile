.phony: all clean

all: utils.o mpi_skeleton

CC=mpicc
CFLSGS= -Wall -O3 -lm

utils.o: utils.c
	gcc $(CFLAGS) -c utils.c -o utils.o

mpi_skeleton: utils.o mpi_skeleton.c
	$(CC) $(CFLAGS) mpi_skeleton.c -o mpi_skeleton utils.o $(CFLAGS)

clean:
	rm -f *.o mpi_skeleton
