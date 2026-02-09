; Original offset: 0x084aa678
C40_5_Event_0:
	Event_RunASM		0x08034f7d
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_Create	COBlackTroop,Position_Bottom
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x0330
	Event_Textbox_SetFace	COFlak+IsSad
	Event_Textbox_Text	0x0331
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x0332
	Event_Textbox_Clear
	Event_Pause		0
	Event_Pause		0
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_Create	COAndy+IsHappy,Position_Top
	Event_Textbox_SetFace	COAndy+IsHappy
	Event_Textbox_Text	0x0333
	Event_Textbox_SetFace	CONell+IsHappy
	Event_Textbox_Text	0x0334
	Event_Textbox_SetFace	COAndy+IsHappy
	Event_Textbox_Text	0x0335
	Event_Textbox_Clear
	Event_Textbox_SetCurrent
	Event_RunASM		0x08034f8d
	Event_End

; blank line