; Original offset: 0x084ac648
C10_0_Event_0:
	Event_TriggerState_Set	0x00000003
	Event_Audio_Start	0x019b
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_Create	COBlackTroop,Position_Top
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x03f5
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x03f6
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x03f7
	Event_Textbox_SetFace	COLash+IsSad
	Event_Textbox_Text	0x03f8
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x03f9
	Event_Textbox_SetFace	COLash+IsSad
	Event_Textbox_Text	0x03fa
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x03fb
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x03fc
	Event_Audio_Stop
	Event_Textbox_Clear
	Event_Pause		0
	Event_Textbox_SetCurrent
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line