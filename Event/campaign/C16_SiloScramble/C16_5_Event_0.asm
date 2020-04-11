; Original offset: 0x084af428
C16_5_Event_0:
	Event_RunASM		0x08034f7d
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_Create	COFlak,Position_Bottom
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x067f
	Event_Textbox_Clear
	Event_Pause		0
	Event_Pause		0
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_Create	COKanbei,Position_Top
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x0680
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x0681
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x0682
	Event_Textbox_SetFace	COSonja+IsHappy
	Event_Textbox_Text	0x0683
	Event_Textbox_SetFace	COKanbei+IsHappy
	Event_Textbox_Text	0x0684
	Event_Textbox_Clear
	Event_RunASM		0x08034f8d
	Event_End

; blank line