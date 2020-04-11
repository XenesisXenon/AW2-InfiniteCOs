; Original offset: 0x084bb480
C13_Worldmap:
	Event_Audio_Start	0x01a7
	Event_Textbox_SetColour	ArmyBlueMoon
	Event_Textbox_Create	COOlaf,Position_Top
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x0452
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x0453
	Event_Textbox_SetFace	COOlaf+IsSad
	Event_Textbox_Text	0x0454
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x0455
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x0456
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x0457
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x0458
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x0459
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x045a
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x045b
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line