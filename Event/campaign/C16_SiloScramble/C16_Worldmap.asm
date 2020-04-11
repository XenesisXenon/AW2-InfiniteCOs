; Original offset: 0x084bbcc0
C16_Worldmap:
	Event_Audio_Start	0x01a6
	Event_Textbox_SetColour	ArmyYellowComet
	Event_Textbox_Create	COKanbei,Position_Top
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x0674
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x0675
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x0676
	Event_Textbox_SetFace	COYellowTroop
	Event_Textbox_Text	0x0677
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x0678
	Event_Textbox_SetFace	COSonja+IsSad
	Event_Textbox_Text	0x0679
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x067a
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x067b
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x067c
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line