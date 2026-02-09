; Original offset: 0x084a37a8
C03_1_Event_2:
	Event_Textbox_Create	COSami,Position_Top
	Event_Icon_Show		64,16,Cursor_Ring
	Event_Icon_Show		96,32,Cursor_Ring
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x0100
	Event_Icon_Clear
	Event_Icon_Show		128,16,Cursor_Ring
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x0101
	Event_Icon_Clear
	Event_Textbox_Clear
	Event_Textbox_Create	COSami,Position_Bottom
	Event_Icon_Show		128,128,Cursor_Ring
	Event_Icon_Show		144,112,Cursor_Ring
	Event_Icon_Show		144,144,Cursor_Ring
	Event_Icon_Show		160,128,Cursor_Ring
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x0102
	Event_Icon_Clear
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x0103
	Event_Icon_Show		144,128,Cursor_Ring
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x0104
	Event_Icon_Clear
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x0105
	Event_Textbox_SetFace	COSami+IsHappy
	Event_Textbox_Text	0x0106
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x0107
	Event_Textbox_Clear
	Event_Global_Set	0x9d
	Event_End

; blank line