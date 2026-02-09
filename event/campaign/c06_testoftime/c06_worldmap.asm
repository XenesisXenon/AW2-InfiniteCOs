; Original offset: 0x084c0130
C06_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COBlackTroop,Position_Top
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x01de
	Event_Textbox_SetFace	COFlak+IsSad
	Event_Textbox_Text	0x01df
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x01e0
	Event_Textbox_SetFace	COFlak+IsSad
	Event_Textbox_Text	0x01e1
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x01e2
	Event_Textbox_SetFace	COFlak+IsSad
	Event_Textbox_Text	0x01e3
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line