; Original offset: 0x084aa9a0
C41_0_Event_0:
	Event_TriggerState_Set	0x00000012
	Event_Audio_Start	0x019d
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_Create	COAndy,Position_Top
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x0351
	Event_Textbox_SetFace	COSami+IsSad
	Event_Textbox_Text	0x0352
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x0353
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x0354
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x0355

	Event_CheckCO		COMax,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x0356

	Event_CheckCO		COAndy,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x0356

	Event_CheckCO		COSami,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x0356
	Event_Audio_Stop
	Event_Textbox_Clear
	Event_Pause		0
	Event_End

; blank line