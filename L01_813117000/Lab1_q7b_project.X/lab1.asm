;label			instruction			operand			comment
;			directive

			LIST				p=18f452		;tell assembler what chip we are using
			INCLUDE				<p18f452.inc>
				
			EXTERN				MapIndex
			GLOBAL				MapName	
										;VARIABLE DEFINITIONS 			

grp_data		UDATA				0x90
MapName			RES				8
			CBLOCK				0x90
			MapName1
			MapName2
			MapName3
			MapName4
			MapName5
			MapName6
			MapName7
			ENDC
			
_MAINCODE		CODE							;start  main code here

						
intGrpName:									;Function to setup up the registers with the
										;letters for the group name
			GLOBAL				intGrpName	
			movlw				0x50
			movwf				MapName1
			movlw				0x75
			movwf				MapName2
			movlw				0x73
			movwf				MapName3
			movlw				0x68
			movwf				MapName4
			movlw				0x70
			movwf				MapName5
			movlw				0x6F
			movwf				MapName6
			movlw				0x70
			movwf				MapName7
			return
			
			
getMapChar:									;Function that is called in the for loop
										;which works like a circular buffer
										;placing the letters at the different addresses 
										;into the WREG
			GLOBAL				getMapChar
			lfsr				0,MapName		;load 12bit file address point to FSR0
			movf				MapIndex,W		;load MapIndex to WREG
			addwf				FSR0L,F			;add mapIndex to FSR0 low byte
			movf				INDF0,W			;load MapName[mapIndex] to WREG
			return
		
			END


