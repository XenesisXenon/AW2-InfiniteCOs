; Original offset: 0x084bcdd0
C22_Worldmap:
	Event_Audio_Start	0x01a6
	Event_Textbox_SetColour	ArmyYellowComet
	Event_Pause		0
	Event_Controls_Lock
	Event_Pause		0
	Event_Textbox_Create	COSonja,Position_Top
	Event_Pause		0
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x075b
	Event_Textbox_SetFace	COSensei
	Event_Textbox_Text	0x075c
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x075d
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x075e
	Event_Textbox_SetFace	COSensei
	Event_Textbox_Text	0x075f
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x0760
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line