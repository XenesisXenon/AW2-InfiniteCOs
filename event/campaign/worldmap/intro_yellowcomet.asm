; Original offset: 0x084BA480
Event_Intro_YellowComet:
	Event_Audio_Start	0x01a6
	Event_Textbox_SetColour	ArmyYellowComet
	Event_Textbox_Create	COSonja+IsSad,Position_Top
	Event_Textbox_SetFace	COSonja+IsSad
	Event_Textbox_Text	0x0666
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x0667
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x0668
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x0669
	Event_Textbox_SetFace	COYellowTroop
	Event_Textbox_Text	0x066a
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x066b
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x066c
	Event_Textbox_SetFace	COSensei
	Event_Textbox_Text	0x066d
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x066e
	Event_Textbox_SetFace	COSensei
	Event_Textbox_Text	0x066f
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x0670
	Event_Textbox_SetFace	COSonja+IsHappy
	Event_Textbox_Text	0x0671
	Event_Textbox_SetFace	COYellowTroop
	Event_Textbox_Text	0x0672
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x0673
	Event_Textbox_Clear
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line