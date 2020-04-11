; Original offset: 0x084b1770
C21_0_Event_0:
	Event_TriggerState_Set	0x00000012
	Event_Audio_Start	0x019b
	Event_Textbox_Create	COSonja,Position_Top
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x0749
	Event_Textbox_SetFace	COSensei
	Event_Textbox_Text	0x074a
	Event_Textbox_Clear
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_Create	COAdder+IsHappy,Position_Bottom
	Event_Textbox_SetFace	COAdder+IsHappy
	Event_Textbox_Text	0x074b
	Event_Textbox_Clear
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_Create	COSensei+IsHappy,Position_Top
	Event_Textbox_SetFace	COSensei+IsHappy
	Event_Textbox_Text	0x074c
	Event_Screen_Move	0,0
	Event_Screen_Move	4,5
	Event_Icon_Show		32,80,Cursor_Ring
	Event_Icon_Show		64,80,Cursor_Ring
	Event_Icon_Show		96,80,Cursor_Ring
	Event_Textbox_SetFace	COSensei
	Event_Textbox_Text	0x074d
	Event_Icon_Clear
	Event_Audio_Stop
	Event_Textbox_Clear
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line