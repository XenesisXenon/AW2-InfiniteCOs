;Icon
	.dh	0x1A
	
;Name (Text ID)
	.dh	TextID_Battlemaps+32
	
;Price
	.dw	0
	
;Bit Check Subroutine
	.dw	AvailCheck_CampaignForce_IsOn+1
	
;Bit Set Subroutine
	.dw	BitSet_ToggleGlobal+1
	
;Bit to set when purchased
	.dw	UnlockBoolean_Custom_CampaignForces
	
;Event
	.dw	Event_CampaignForcesOff
