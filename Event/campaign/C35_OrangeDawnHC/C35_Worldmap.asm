; Original offset: 0x084beb90
C35_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COFlak,Position_Bottom
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x0267
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x0268
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x0269
	Event_Textbox_Clear
	Event_Textbox_SetColour	ArmyOrangeStar
	Event_Textbox_Create	COMax,Position_Top
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x026a
	Event_Textbox_Clear
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COFlak,Position_Bottom
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x026b
	Event_Textbox_Clear
	Event_Textbox_SetColour	ArmyOrangeStar
	Event_Textbox_Create	COMax+IsSad,Position_Top
	Event_Textbox_SetFace	COMax+IsSad
	Event_Textbox_Text	0x026c
	Event_Textbox_Clear
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COFlak+IsSad,Position_Bottom
	Event_Textbox_SetFace	COFlak+IsSad
	Event_Textbox_Text	0x026d
	Event_Textbox_Clear
	Event_Textbox_SetColour	ArmyOrangeStar
	Event_Textbox_Create	COMax,Position_Top
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x026e
	Event_Textbox_Clear
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COFlak,Position_Bottom
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x026f
	Event_Textbox_Clear
	Event_Textbox_SetColour	ArmyOrangeStar
	Event_Textbox_Create	COMax+IsSad,Position_Top
	Event_Textbox_SetFace	COMax+IsSad
	Event_Textbox_Text	0x0270
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line