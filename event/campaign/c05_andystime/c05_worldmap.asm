; Original offset: 0x084bffd0
C05_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COLash+IsHappy,Position_Top
	Event_Textbox_SetFace	COLash+IsHappy
	Event_Textbox_Text	0x0191
	Event_Textbox_SetFace	COFlak+IsHappy
	Event_Textbox_Text	0x0192
	Event_Textbox_SetFace	COLash+IsHappy
	Event_Textbox_Text	0x0193
	Event_Textbox_SetFace	COFlak+IsSad
	Event_Textbox_Text	0x0194
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x0195
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x0196
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line