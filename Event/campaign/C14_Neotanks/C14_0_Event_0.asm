; Original offset: 0x084ae388
C14_0_Event_0:
	Event_TriggerState_Set	0x00000003
	Event_Audio_Start	0x01a7
	Event_Textbox_Create	COAndy,Position_Top

	Event_CheckCO		COOlaf,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x0478

	Event_CheckCO		COGrit,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x0479

	Event_CheckCO		COColin,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x047a
	Event_Audio_Stop
	Event_Textbox_Clear
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line