#include <p18f452.h>
#include <delays.h>
#include "xlcd_grpd.h"
#include <string.h>
#include <stdio.h>

#pragma config OSC = HS
#pragma config WDT = OFF //Disable watchdog timer
#pragma config LVP = OFF //Disable low voltage programming

extern void intGrpName(void);
extern char getMapChar(void);
extern char MapName;

unsigned int MapIndex = 0;
char grpName[7];

void setupLCD(void);// Function used to setup the LCD 
void retrieveLetters(void); //Function used to get all the letters for the groupName from the asm



#define _XTAL_FREQ 4000000UL

void DelayFor18TCY(void)
 {
 Delay10TCYx(2); //delays 20 cycles
 return;
 }
 /*****/
 void DelayPORXLCD(void)   // minimum 15ms
 {
 Delay100TCYx(0xA0);
 Delay100TCYx(0xA0); 
 Delay100TCYx(0xA0); 
 Delay100TCYx(0xA0);
   
 return;
 }
 /*****/
 void DelayXLCD(void)     // minimum 5ms
 {
 Delay100TCYx(0x50);      // 100TCY * 54
 Delay100TCYx(0x50);  
 Delay100TCYx(0x50);  

 return;
 }
 
void main(void){
 
    intGrpName();
    retrieveLetters();
    setupLCD();
    
    WriteCmdXLCD( BLINK_ON );
    while( BusyXLCD() );
    putsXLCD(grpName);
    while( BusyXLCD() );
    Sleep();
       
}

void retrieveLetters(){
    for(MapIndex=0;MapIndex<=7;MapIndex++){
        grpName[MapIndex] = getMapChar();
    }
}

void setupLCD(){
    PORTD = 0X00;
    TRISD = 0X00;

    OpenXLCD(FOUR_BIT & LINES_5X7);
    while( BusyXLCD() );
    SetDDRamAddr(0x00);
    WriteCmdXLCD( SHIFT_DISP_LEFT );
    while( BusyXLCD() );

}
