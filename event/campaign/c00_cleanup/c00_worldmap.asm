; Original offset: 0x084bf800
C00_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COFlak+IsSad,Position_Top
	Event_Textbox_SetFace	COFlak+IsSad
	Event_Textbox_Text	0x0037
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x0038
	Event_Textbox_SetFace	COFlak+IsSad
	Event_Textbox_Text	0x0039
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x003a
	Event_Textbox_SetFace	COFlak+IsSad
	Event_Textbox_Text	0x003b
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x003c
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x003d
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line