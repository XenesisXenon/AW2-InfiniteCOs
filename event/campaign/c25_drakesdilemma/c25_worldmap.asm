; Original offset: 0x084bd560
C25_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COHawke,Position_Top
	Event_Textbox_SetFace	COHawke
	Event_Textbox_Text	0x050a
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x050b
	Event_Textbox_SetFace	COHawke
	Event_Textbox_Text	0x050c
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x050d
	Event_Textbox_SetFace	COHawke
	Event_Textbox_Text	0x050e
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line