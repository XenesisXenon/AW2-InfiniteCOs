; Original offset: 0x084b1df8
C22_0_Event_0:
	Event_TriggerState_Set	0x00000007
	Event_Audio_Start	0x01a6
	Event_Screen_Move	14,13
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_Create	COSami,Position_Top
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x0764
	Event_Textbox_SetPlayer	PlayerOne

	Event_CheckCO		COSonja,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x0765

	Event_CheckCO		COKanbei,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x0766

	Event_CheckCO		COSensei,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COSensei
	Event_Textbox_Text	0x0767
	Event_Audio_Stop
	Event_Textbox_Clear
	Event_End

; blank line