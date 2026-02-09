; Original offset: 0x084BA6D0
Event_Intro_OrangeStar:
	Event_Audio_Start	0x019d
	Event_Textbox_SetColour	ArmyOrangeStar
	Event_Textbox_Create	COAndy,Position_Top
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x023d
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x023e
	Event_Textbox_SetFace	COMax+IsSad
	Event_Textbox_Text	0x023f
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x0240
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x0241
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x0242
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x0243
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x0244
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x0245
	Event_Textbox_SetFace	COAndy+IsSad
	Event_Textbox_Text	0x0246
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x0247
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x0248
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x0249
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x024a
	Event_Textbox_SetFace	COAndy+IsHappy
	Event_Textbox_Text	0x024b
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x024c
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x024d
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x024e
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x024f
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x0250
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x0251
	Event_Audio_Stop
	Event_Textbox_Clear
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line