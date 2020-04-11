;Icon
	.dh	0x19
	
;Name (Text ID)
	.dh	TextID_Battlemaps+18
	
;Price
	.dw	0
	
;Bit Check Subroutine
	.dw	AvailCheck_VersusCO_Default+1
	
;Bit Set Subroutine
	.dw	BitSet_ClearVersusCOBits+1
	
;Bit to set when purchased
	.dw	0
	
;Event
	.dw	Event_VersusCO_Default
