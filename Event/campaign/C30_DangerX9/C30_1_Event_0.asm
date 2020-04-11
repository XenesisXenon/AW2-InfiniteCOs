; Original offset: 0x084b57b0
C30_1_Event_0:
	Event_Textbox_Create	COAndy,Position_Top

	Event_CheckCO		COEagle,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COEagle
	Event_Textbox_Text	0x0608

	Event_CheckCO		CODrake,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	CODrake
	Event_Textbox_Text	0x0609

	Event_CheckCO		COJess,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COJess
	Event_Textbox_Text	0x060a
	Event_Textbox_Clear
	Event_End

; blank line