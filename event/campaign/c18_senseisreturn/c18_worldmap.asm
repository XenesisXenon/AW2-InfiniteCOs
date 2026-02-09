; Original offset: 0x084bc200
C18_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COAdder,Position_Bottom
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x06bb
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x06bc
	Event_Textbox_SetFace	COAdder+IsHappy
	Event_Textbox_Text	0x06bd
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x06be
	Event_Textbox_SetFace	COAdder+IsSad
	Event_Textbox_Text	0x06bf
	Event_Textbox_Clear
	Event_Pause		0
	Event_Pause		0
	Event_Textbox_SetColour	ArmyYellowComet
	Event_Textbox_Create	COSonja,Position_Top
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x06c0
	Event_Textbox_SetFace	COSensei
	Event_Textbox_Text	0x06c1
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x06c2
	Event_Textbox_SetFace	COSensei
	Event_Textbox_Text	0x06c3
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line