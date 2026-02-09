;Icon
	.dh	0x18
	
;Name (Text ID)
	.dh	TextID_Battlemaps+8
	
;Price
	.dw	0
	
;Bit Check Subroutine
	.dw	AvailCheck_ChargeType_IsOn+1
	
;Bit Set Subroutine
	.dw	BitSet_ClearAllChargeTypeBits+1
	
;Bit to set when purchased
	.dw	UnlockBoolean_Custom_Charging
	
;Event
	.dw	Event_ChargeType_Off
