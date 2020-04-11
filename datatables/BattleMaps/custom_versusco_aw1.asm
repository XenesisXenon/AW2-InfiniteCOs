;Icon
	.dh	0x19
	
;Name (Text ID)
	.dh	TextID_Battlemaps+20
	
;Price
	.dw	0
	
;Bit Check Subroutine
	.dw	AvailCheck_VersusCO_AW1+1
	
;Bit Set Subroutine
	.dw	0x0803CBA0+1
	
;Bit to set when purchased
	.dw	UnlockBoolean_Custom_VersusAW1
	
;Event
	.dw	Event_VersusCO_AW1
