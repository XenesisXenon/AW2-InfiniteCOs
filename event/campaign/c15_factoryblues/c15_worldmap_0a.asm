; Original offset: 0x084bbbb0
C15_Worldmap_0A:
	Event_Textbox_SetColour	ArmyBlueMoon
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x049f
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x04a0
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x04a1
	Event_Textbox_SetFace	COGrit+IsHappy
	Event_Textbox_Text	0x04a2
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x04a3
	Event_Textbox_Clear
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line