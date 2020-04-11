; Original offset: 0x084af338
C16_0_Event_0:
	Event_TriggerState_Set	0x00000003
	Event_Audio_Start	0x01a6
	Event_Textbox_Create	COSonja,Position_Top
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x067d
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x067e
	Event_Audio_Stop
	Event_Textbox_Clear
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line