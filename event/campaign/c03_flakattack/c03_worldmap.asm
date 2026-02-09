; Original offset: 0x084bfd90
C03_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COBlackTroop,Position_Top
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x00f5
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x00f6
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x00f7
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x00f8
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x00f9
	Event_Textbox_Clear
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line