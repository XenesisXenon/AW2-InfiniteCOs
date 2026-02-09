; Original offset: 0x084afe08
C18_0_Event_0:
	Event_TriggerState_Set	0x00000003
	Event_Audio_Start	0x019b
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_Create	COAdder+IsHappy,Position_Bottom
	Event_Textbox_SetFace	COAdder+IsHappy
	Event_Textbox_Text	0x06c4
	Event_Textbox_Clear
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_Create	COSensei,Position_Top
	Event_Textbox_SetFace	COSensei
	Event_Textbox_Text	0x06c5
	Event_Textbox_Clear
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_Create	COAdder,Position_Bottom
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x06c6
	Event_Textbox_Clear
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_Create	COSensei,Position_Top
	Event_Textbox_SetFace	COSensei
	Event_Textbox_Text	0x06c7
	Event_Textbox_Clear
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_Create	COAdder,Position_Bottom
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x06c8
	Event_Textbox_Clear
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_Create	COSensei,Position_Top
	Event_Textbox_SetFace	COSensei
	Event_Textbox_Text	0x06c9
	Event_Textbox_Clear
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_Create	COAdder+IsHappy,Position_Bottom
	Event_Textbox_SetFace	COAdder+IsHappy
	Event_Textbox_Text	0x06ca
	Event_Audio_Stop
	Event_Textbox_Clear
	Event_Textbox_SetCurrent
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line