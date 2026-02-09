;Icon
	.dh	0x18
	
;Name (Text ID)
	.dh	TextID_Battlemaps+4
	
;Price
	.dw	0
	
;Bit Check Subroutine
	.dw	AvailCheck_TurnTimer_IsOn+1
	
;Bit Set Subroutine
	.dw	BitSet_ToggleGlobal+1
	
;Bit to set when purchased
	.dw	UnlockBoolean_Custom_TurnTimer
	
;Event
	.dw	Event_TurnTimer_Off
