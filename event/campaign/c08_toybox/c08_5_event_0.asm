; Original offset: 0x084ab778
C08_5_Event_0:
	Event_RunASM		0x08034f7d
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_Create	COLash,Position_Bottom
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x03a2
	Event_Audio_Start	0x01a7
	Event_Textbox_Clear
	Event_Pause		0
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_Create	COOlaf,Position_Top
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x03a3
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x03a4
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x03a5
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x03a6
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x03a7
	Event_Textbox_Clear
	Event_CheckFlag		0x00,C08_5_Event_0a;0x084ab8e8
	Event_Call		C08_5_Event_0b;0x084ab908
	Event_Global_Set	0x62
	Event_Call		C08_5_Event_0b;0x084ab908
	Event_RunASM		0x08034f8d
	Event_End

; blank line