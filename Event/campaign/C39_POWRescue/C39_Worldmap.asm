; Original offset: 0x084bf300
C39_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COAdder,Position_Top
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x0300
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x0301
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x0302
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x0303
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x0304
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x0305
	Event_Textbox_SetFace	COAdder+IsHappy
	Event_Textbox_Text	0x0306
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x0307
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x0308
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line