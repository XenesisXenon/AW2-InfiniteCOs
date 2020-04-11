; Original offset: 0x084ad4e8
C12_0_Event_0:
	Event_TriggerState_Set	0x00000002
	Event_Audio_Start	0x019b
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_Create	COLash+IsHappy,Position_Bottom
	Event_Textbox_SetFace	COLash+IsHappy
	Event_Textbox_Text	0x0440
	Event_Textbox_Clear
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_Create	COColin+IsSad,Position_Top
	Event_Textbox_SetFace	COColin+IsSad
	Event_Textbox_Text	0x0441
	Event_Textbox_Clear
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_Create	COLash,Position_Bottom
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x0442
	Event_Textbox_Clear
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_Create	COColin+IsSad,Position_Top
	Event_Textbox_SetFace	COColin+IsSad
	Event_Textbox_Text	0x0443
	Event_Textbox_Clear
	Event_Textbox_SetPlayer	PlayerTwo
	Event_Textbox_Create	COLash,Position_Bottom
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x0444
	Event_Textbox_Clear
	Event_Textbox_SetPlayer	PlayerOne
	Event_Textbox_Create	COColin,Position_Top
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x0445
	Event_Audio_Stop
	Event_Textbox_Clear
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line