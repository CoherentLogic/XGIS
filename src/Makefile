#
# Makefile
#

xgismath.so: xgismath.o
	gcc -o xgismath.so -g -shared xgismath.o

xgismath.o: xgismath.c
	gcc -c -g -fPIC -I/opt/lsb-gtm xgismath.c

clean:
	rm xgismath.so
	rm xgismath.o
