; Original offset: 0x084b1f68
C22_1_Event_0:
	Event_Textbox_Create	COAndy,Position_Top

	Event_CheckCO		COSonja,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x0768

	Event_CheckCO		COKanbei,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x0769

	Event_CheckCO		COSensei,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COSensei
	Event_Textbox_Text	0x076a
	Event_Textbox_Clear
	Event_End

; blank line