; Original offset: 0x084babf0
C09_Worldmap:
	Event_Audio_Start	0x01a7
	Event_Textbox_SetColour	ArmyBlueMoon
	Event_Textbox_Create	COOlaf,Position_Top
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x03b1
	Event_Textbox_SetFace	COGrit+IsSad
	Event_Textbox_Text	0x03b2
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x03b3
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x03b4
	Event_Textbox_SetFace	COOlaf+IsSad
	Event_Textbox_Text	0x03b5
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x03b6
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x03b7
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x03b8
	Event_Textbox_SetFace	COOlaf+IsSad
	Event_Textbox_Text	0x03b9
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line