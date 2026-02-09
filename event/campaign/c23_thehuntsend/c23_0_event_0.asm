; Original offset: 0x084b2370
C23_0_Event_0:
	Event_TriggerState_Set	0x00000016
	Event_Audio_Start	0x01a6
	Event_Textbox_Create	COAndy,Position_Top

	Event_CheckCO		COSonja,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x0796

	Event_CheckCO		COKanbei,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x0795

	Event_CheckCO		COSensei,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COSensei
	Event_Textbox_Text	0x0797
	Event_Textbox_Clear
	Event_Pause		0
	Event_Textbox_Create	COMax,Position_Top

	Event_CheckCO		COAndy,PlayerTwo,0x00000003
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x078f

	Event_CheckCO		COSami,PlayerTwo,0x00000003
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x0790

	Event_CheckCO		COMax,PlayerTwo,0x00000003
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x0791

	Event_CheckCO		COOlaf,PlayerTwo,0x00000003
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x0792

	Event_CheckCO		COGrit,PlayerTwo,0x00000003
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x0793

	Event_CheckCO		COColin,PlayerTwo,0x00000003
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x0794
	Event_Audio_Stop
	Event_Textbox_Clear
	Event_Textbox_SetCurrent
	Event_End

; blank line