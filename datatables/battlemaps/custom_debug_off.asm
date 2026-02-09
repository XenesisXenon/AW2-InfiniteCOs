;Icon
	.dh	0x18
	
;Name (Text ID)
	.dh	TextID_Battlemaps+12
	
;Price
	.dw	0
	
;Bit Check Subroutine
	.dw	AvailCheck_Debug_IsOn+1
	
;Bit Set Subroutine
	.dw	BitSet_ToggleGlobal+1
	
;Bit to set when purchased
	.dw	UnlockBoolean_Custom_Debug
	
;Event
	.dw	Event_Debug_Off
