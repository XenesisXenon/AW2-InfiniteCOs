; Original offset: 0x084bc5f0
C20_Worldmap:
	Event_Audio_Start	0x01a6
	Event_Textbox_SetColour	ArmyYellowComet
	Event_Textbox_Create	COKanbei,Position_Top
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x070f
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x0710
	Event_Textbox_SetFace	COSensei+IsSad
	Event_Textbox_Text	0x0711
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x0712
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x0713
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x0714
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line