; Original offset: 0x084beec0
C36_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COLash,Position_Top
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x0291
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x0292
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x0293
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x0294
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x0295
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x0296
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line