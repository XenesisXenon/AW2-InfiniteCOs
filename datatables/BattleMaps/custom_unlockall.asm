;Unlock All
;Icon
	.dh	0x14
	
;Name (Text ID)
	.dh	TextID_Battlemaps
	
;Price
	.dw	0x0
	
;Bit Check Subroutine
	.dw	AvailCheck_UnlockAll+1
	
;Bit Set Subroutine
	.dw	BitSet_UnlockAll+1
	
;Bit to set when purchased
	.dw	0
	
;Event
	.dw	Event_UnlockAll;0x084C2F88
