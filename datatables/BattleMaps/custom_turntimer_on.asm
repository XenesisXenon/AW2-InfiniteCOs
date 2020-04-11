;Icon
	.dh	0x18
	
;Name (Text ID)
	.dh	TextID_Battlemaps+2
	
;Price
	.dw	0
	
;Bit Check Subroutine
	.dw	AvailCheck_TurnTimer_IsOff+1
	
;Bit Set Subroutine
	.dw	0x0803CBA0+1
	
;Bit to set when purchased
	.dw	UnlockBoolean_Custom_TurnTimer
	
;Event
	.dw	Event_TurnTimer_On
