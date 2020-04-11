; Original offset: 0x084bd6a0
C26_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COBlackTroop,Position_Top
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x0534
	Event_Textbox_SetFace	COLash+IsHappy
	Event_Textbox_Text	0x0535
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x0536
	Event_Textbox_SetFace	COLash+IsSad
	Event_Textbox_Text	0x0537
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x0538
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x0539
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x053a
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x053b
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x053c
	Event_Textbox_SetFace	COLash+IsSad
	Event_Textbox_Text	0x053d
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x053e
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line