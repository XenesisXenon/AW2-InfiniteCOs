;Icon
	.dh	0x18
	
;Name (Text ID)
	.dh	TextID_Battlemaps+42
	
;Price
	.dw	0
	
;Bit Check Subroutine
	.dw	AvailCheck_ChargeTypeAW1_IsOff+1
	
;Bit Set Subroutine
	.dw	BitSet_ClearOtherChargeTypeBits+1
	
;Bit to set when purchased
	.dw	UnlockBoolean_Custom_ChargingAW1
	
;Event
	.dw	Event_ChargeTypeAW1_On
