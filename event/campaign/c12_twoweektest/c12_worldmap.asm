; Original offset: 0x084bb290
C12_Worldmap:
	Event_Audio_Start	0x01a7
	Event_Textbox_SetColour	ArmyBlueMoon
	Event_Textbox_Create	COOlaf,Position_Top
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x0437
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x0438
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x0439
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x043a
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x043b
	Event_Textbox_Clear
	Event_Pause		0
	Event_Audio_Start	0x019b
	Event_Textbox_Create	COBlueTroop,Position_Top
	Event_Textbox_SetFace	COBlueTroop
	Event_Textbox_Text	0x043c
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x043d
	Event_Textbox_SetFace	COBlueTroop
	Event_Textbox_Text	0x043e
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x043f
	Event_Textbox_Clear
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line