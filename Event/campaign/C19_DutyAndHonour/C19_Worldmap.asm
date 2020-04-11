; Original offset: 0x084bc410
C19_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COBlackTroop,Position_Top
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x06dd
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x06de
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x06df
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x06e0
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x06e1
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x06e2
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x06e3
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x06e4
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x06e5
	Event_Textbox_SetFace	COAdder+IsHappy
	Event_Textbox_Text	0x06e6
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line