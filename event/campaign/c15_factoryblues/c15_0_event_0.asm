; Original offset: 0x084ae8a0
C15_0_Event_0:
	Event_TriggerState_Set	0x00000016
	Event_Audio_Start	0x01a7
	Event_Textbox_Create	COAndy,Position_Top

	Event_CheckCO		COOlaf,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x04a7

	Event_CheckCO		COGrit,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x04a8

	Event_CheckCO		COColin,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x04a9

	Event_CheckCO		COAndy,PlayerTwo,0x00000003
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x04a4

	Event_CheckCO		COSami,PlayerTwo,0x00000003
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x04a5

	Event_CheckCO		COMax,PlayerTwo,0x00000003
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x04a6

	Event_CheckCO		COKanbei,PlayerTwo,0x00000003
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x04aa

	Event_CheckCO		COSonja,PlayerTwo,0x00000003
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x04ab

	Event_CheckCO		COSensei,PlayerTwo,0x00000003
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_SetFace	COSensei
	Event_Textbox_Text	0x04ac
	Event_Audio_Stop
	Event_Textbox_Clear
	Event_Textbox_SetCurrent
	Event_End

; blank line