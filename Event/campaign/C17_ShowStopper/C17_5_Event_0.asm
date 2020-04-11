; Original offset: 0x084afa90
C17_5_Event_0:
	Event_RunASM		0x08034f7d
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_Create	COAdder+IsSad,Position_Bottom
	Event_Textbox_SetFace	COAdder+IsSad
	Event_Textbox_Text	0x06ad
	Event_Textbox_Clear
	Event_Pause		0
	Event_Pause		0
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_Create	COSonja+IsHappy,Position_Top
	Event_Textbox_SetFace	COSonja+IsHappy
	Event_Textbox_Text	0x06ae
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x06af
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x06b0
	Event_Textbox_SetFace	COKanbei+IsHappy
	Event_Textbox_Text	0x06b1
	Event_Textbox_SetFace	COSonja+IsHappy
	Event_Textbox_Text	0x06b2
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x06b3
	Event_Textbox_SetFace	COSonja+IsHappy
	Event_Textbox_Text	0x06b4
	Event_Textbox_Clear
	Event_CheckFlag		0x00,C17_5_Event_0a;0x084afc40
	Event_Call		C17_5_Event_0b;0x084afc60
	Event_Global_Set	0x63
	Event_Call		C17_5_Event_0b;0x084afc60
	Event_RunASM		0x08034f8d
	Event_End

; blank line