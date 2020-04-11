; Original offset: 0x084bdb50
C28_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COHawke,Position_Top
	Event_Textbox_SetFace	COHawke
	Event_Textbox_Text	0x059e
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x059f
	Event_Textbox_SetFace	COHawke
	Event_Textbox_Text	0x05a0
	Event_Textbox_SetFace	COLash+IsHappy
	Event_Textbox_Text	0x05a1
	Event_Textbox_SetFace	COHawke
	Event_Textbox_Text	0x05a2
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x05a3
	Event_Textbox_SetFace	COHawke
	Event_Textbox_Text	0x05a4
	Event_Textbox_SetFace	COLash+IsSad
	Event_Textbox_Text	0x05a5
	Event_Textbox_SetFace	COHawke
	Event_Textbox_Text	0x05a6
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x05a7
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line