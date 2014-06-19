#define F_CPU 8000000UL

#include <avr/io.h>
#include <util/delay.h>

int main()
{
  DDRB = 0xFF;
  PORTB = 0x0F;

  TCCR0A = 0x83;//0b10000011
  TCCR0B = 0x03;//0b00000011

  int a = 0;
  while(1){
    OCR0A = a;
    _delay_ms(4);
    a++;
  }
  return 0;
}
