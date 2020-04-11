; Original offset: 0x084bd380
C24_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COHawke,Position_Top
	Event_Textbox_SetFace	COHawke
	Event_Textbox_Text	0x04e5
	Event_Textbox_SetFace	COAdder+IsHappy
	Event_Textbox_Text	0x04e6
	Event_Textbox_SetFace	COHawke
	Event_Textbox_Text	0x04e7
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x04e8
	Event_Textbox_SetFace	COHawke
	Event_Textbox_Text	0x04e9
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x04ea
	Event_Textbox_SetFace	COHawke
	Event_Textbox_Text	0x04eb
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x04ec
	Event_Textbox_SetFace	COHawke
	Event_Textbox_Text	0x04ed
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x04ee
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line