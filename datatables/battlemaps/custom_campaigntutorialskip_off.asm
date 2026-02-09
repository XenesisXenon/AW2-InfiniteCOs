;Icon
	.dh	0x1A
	
;Name (Text ID)
	.dh	TextID_Battlemaps+36
	
;Price
	.dw	0
	
;Bit Check Subroutine
	.dw	AvailCheck_CampaignTutorialSkip_IsOn+1
	
;Bit Set Subroutine
	.dw	BitSet_ToggleGlobal+1
	
;Bit to set when purchased
	.dw	UnlockBoolean_Custom_TutorialSkip
	
;Event
	.dw	Event_CampaignTutorialSkipOff
