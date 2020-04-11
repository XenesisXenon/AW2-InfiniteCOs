; Original offset: 0x084b3f58
C26_5_Event_0:
	Event_RunASM		0x08034f7d
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_Create	COGreenTroop,Position_Top
	Event_Textbox_SetFace	COGreenTroop
	Event_Textbox_Text	0x0554
	Event_Textbox_SetFace	COJess+IsHappy
	Event_Textbox_Text	0x0555
	Event_Textbox_SetFace	COGreenTroop
	Event_Textbox_Text	0x0556
	Event_Textbox_SetFace	COJess
	Event_Textbox_Text	0x0557
	Event_Textbox_SetFace	COGreenTroop
	Event_Textbox_Text	0x0558
	Event_Textbox_SetFace	CODrake
	Event_Textbox_Text	0x0559
	Event_Textbox_SetFace	COJess
	Event_Textbox_Text	0x055a
	Event_Textbox_SetFace	CODrake+IsHappy
	Event_Textbox_Text	0x055b
	Event_Textbox_Clear
	Event_Pause		0
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_Create	COLash+IsSad,Position_Bottom
	Event_Textbox_SetFace	COLash+IsSad
	Event_Textbox_Text	0x055c
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x055d
	Event_Textbox_SetFace	COLash+IsSad
	Event_Textbox_Text	0x055e
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x055f
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x0560
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x0561
	Event_Textbox_SetFace	COLash+IsSad
	Event_Textbox_Text	0x0562
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x0563
	Event_Textbox_SetFace	COLash+IsSad
	Event_Textbox_Text	0x0564
	Event_Textbox_Clear
	Event_Textbox_SetCurrent
	Event_CheckFlag		0x00,C26_5_Event_0a;0x084b4228
	Event_Call		C26_5_Event_0b;0x084b4248
	Event_Global_Set	0x64
	Event_Call		C26_5_Event_0b;0x084b4248
	Event_RunASM		0x08034f8d
	Event_End

; blank line