;Icon
	.dh	0x18
	
;Name (Text ID)
	.dh	TextID_Battlemaps+6
	
;Price
	.dw	0
	
;Bit Check Subroutine
	.dw	AvailCheck_ChargeType_IsOff+1
	
;Bit Set Subroutine
	.dw	BitSet_ClearOtherChargeTypeBits+1
	
;Bit to set when purchased
	.dw	UnlockBoolean_Custom_Charging
	
;Event
	.dw	Event_ChargeType_On
