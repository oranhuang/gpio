CC:=arm-linux-gnueabihf-gcc
#CC:=gcc

all: gpio

rasppi_gpio.o : rasppi_gpio.c
	$(CC) -c rasppi_gpio.c 

gpio : rasppi_gpio.o
	$(CC) -Wall -o2 -o gpio rasppi_gpio.o -lm -lpthread


clean:
	-rm -f *.o
	-rm -f gpio
