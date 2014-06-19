#Makefile_Atmega168P

PROG = PWM
MCU = atmega168
CC = avr-gcc
OBJCOPY = avr-objcopy
CFLAGS = -O2 -Os -mmcu=$(MCU)

all: $(PROG).elf $(PROG).hex

$(PROG).elf: $(PROG).c
	$(CC) $(CFLAGS) -o $(PROG).elf $(PROG).c

$(PROG).hex: $(PROG).elf
	$(OBJCOPY) -R .eeprom -O ihex $(PROG).elf $(PROG).hex

clean:
	rm $(PROG).elf $(PROG).hex