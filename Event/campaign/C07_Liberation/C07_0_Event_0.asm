; Original offset: 0x084a7130
C07_0_Event_0:
	Event_TriggerState_Set	0x00000012
	Event_Audio_Start	0x019b
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_Create	COAndy,Position_Top
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x0212
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x0213
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x0214
	Event_Textbox_SetFace	COMax+IsSad
	Event_Textbox_Text	0x0215
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x0216

	Event_CheckCO		COMax,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x0217

	Event_CheckCO		COAndy,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x0217

	Event_CheckCO		COSami,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x0217
	Event_Audio_Stop
	Event_Textbox_Clear
	Event_End

; blank line