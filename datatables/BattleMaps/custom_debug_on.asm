;Icon
	.dh	0x14
	
;Name (Text ID)
	.dh	TextID_Battlemaps+10
	
;Price
	.dw	0
	
;Bit Check Subroutine
	.dw	AvailCheck_Debug_IsOff+1
	
;Bit Set Subroutine
	.dw	0x0803CBA0+1
	
;Bit to set when purchased
	.dw	UnlockBoolean_Custom_Debug
	
;Event
	.dw	Event_Debug_On
