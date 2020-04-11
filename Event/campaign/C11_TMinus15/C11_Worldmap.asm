; Original offset: 0x084bb110
C11_Worldmap:
	Event_Audio_Start	0x01a7
	Event_Textbox_SetColour	ArmyBlueMoon
	Event_Textbox_Create	COColin,Position_Top
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x040d
	Event_Textbox_SetFace	COOlaf+IsSad
	Event_Textbox_Text	0x040e
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x040f
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x0410
	Event_Textbox_SetFace	COGrit+IsSad
	Event_Textbox_Text	0x0411
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x0412
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x0413
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line