; Original offset: 0x084a8b38
C36_5_Event_0:
	Event_RunASM		0x08034f7d
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_Create	COAndy+IsHappy,Position_Top
	Event_Textbox_SetFace	COAndy+IsHappy
	Event_Textbox_Text	0x029f
	Event_Textbox_Clear
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_Create	COFlak+IsSad,Position_Bottom
	Event_Textbox_SetFace	COFlak+IsSad
	Event_Textbox_Text	0x02a0
	Event_Textbox_Clear
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_Create	COAndy+IsSad,Position_Top
	Event_Textbox_SetFace	COAndy+IsSad
	Event_Textbox_Text	0x02a1
	Event_Textbox_Clear
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_Create	COFlak+IsSad,Position_Bottom
	Event_Textbox_SetFace	COFlak+IsSad
	Event_Textbox_Text	0x02a2
	Event_Textbox_Clear
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_Create	COAndy,Position_Top
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x02a3
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x02a4
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x02a5
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x02a6
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x02a7
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x02a8
	Event_Textbox_SetFace	COOrangeTroop
	Event_Textbox_Text	0x02a9
	Event_Textbox_SetFace	COMax+IsSad
	Event_Textbox_Text	0x02aa
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x02ab
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x02ac
	Event_Textbox_SetFace	COAndy+IsHappy
	Event_Textbox_Text	0x02ad
	Event_Textbox_SetFace	CONell+IsHappy
	Event_Textbox_Text	0x02ae
	Event_Textbox_Clear
	Event_CheckFlag		0x00,C36_5_Event_0a;0x084a8e58
	Event_Call		C36_5_Event_0b;0x084a8e78
	Event_Global_Set	0x61
	Event_Call		C36_5_Event_0b;0x084a8e78
	Event_RunASM		0x08034f8d
	Event_End

; blank line