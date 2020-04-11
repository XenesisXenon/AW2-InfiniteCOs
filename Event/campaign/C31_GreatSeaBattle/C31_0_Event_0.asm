; Original offset: 0x084b5c18
C31_0_Event_0:
	Event_TriggerState_Set	0x00000016
	Event_Audio_Start	0x01a5
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_Create	COAndy,Position_Top

	Event_CheckCO		COEagle,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COEagle
	Event_Textbox_Text	0x062e

	Event_CheckCO		CODrake,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	CODrake
	Event_Textbox_Text	0x062f

	Event_CheckCO		COJess,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COJess
	Event_Textbox_Text	0x0630
	Event_Textbox_Clear
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_Create	COMax,Position_Bottom

	Event_CheckCO		COAndy,PlayerTwo,0x00000003
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x0634

	Event_CheckCO		COSami,PlayerTwo,0x00000003
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x0635

	Event_CheckCO		COMax,PlayerTwo,0x00000003
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x0636
	Event_Textbox_Clear
	Event_Textbox_SetPlayer	PlayerThree
	Event_Textbox_Create	COOlaf,Position_Top

	Event_CheckCO		COKanbei,PlayerThree,0x00000003
	Event_Textbox_SetPlayer	PlayerThree
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x0631

	Event_CheckCO		COSonja,PlayerThree,0x00000003
	Event_Textbox_SetPlayer	PlayerThree
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x0632

	Event_CheckCO		COSensei,PlayerThree,0x00000003
	Event_Textbox_SetPlayer	PlayerThree
	Event_Textbox_SetFace	COSensei
	Event_Textbox_Text	0x0633
	Event_Audio_Stop
	Event_Textbox_Clear
	Event_Textbox_SetCurrent
	Event_End

; blank line