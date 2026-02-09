; Original offset: 0x084bf1a0
C38_Worldmap:
	Event_Audio_Start	0x019d
	Event_Textbox_SetColour	ArmyOrangeStar
	Event_Textbox_Create	COOrangeTroop,Position_Top
	Event_Textbox_SetFace	COOrangeTroop
	Event_Textbox_Text	0x02cf
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x02d0
	Event_Textbox_SetFace	COOrangeTroop
	Event_Textbox_Text	0x02d1
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x02d2
	Event_Textbox_SetFace	COOrangeTroop
	Event_Textbox_Text	0x02d3
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x02d4
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line