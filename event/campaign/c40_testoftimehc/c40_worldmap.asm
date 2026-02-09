; Original offset: 0x084bf4c0
C40_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COBlackTroop,Position_Top
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x032a
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x032b
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x032c
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x032d
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x032e
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x032f
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line