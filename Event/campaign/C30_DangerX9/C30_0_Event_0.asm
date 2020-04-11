; Original offset: 0x084b5690
C30_0_Event_0:
	Event_TriggerState_Set	0x00000003
	Event_Audio_Start	0x01a5
	Event_Textbox_Create	COAndy,Position_Top

	Event_CheckCO		COEagle,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COEagle
	Event_Textbox_Text	0x0605

	Event_CheckCO		CODrake,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	CODrake
	Event_Textbox_Text	0x0606

	Event_CheckCO		COJess,PlayerOne,0x00000003
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_SetFace	COJess
	Event_Textbox_Text	0x0607
	Event_Audio_Stop
	Event_Textbox_Clear
	Event_End

; blank line