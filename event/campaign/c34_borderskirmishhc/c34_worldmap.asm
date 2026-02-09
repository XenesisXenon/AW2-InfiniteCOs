; Original offset: 0x084be9f0
C34_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyOrangeStar
	Event_Textbox_Create	COOrangeTroop,Position_Top
	Event_Textbox_SetFace	COOrangeTroop
	Event_Textbox_Text	0x0252
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x0253
	Event_Textbox_SetFace	COOrangeTroop
	Event_Textbox_Text	0x0254
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x0255
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x0256
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x0257
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x0258
	Event_Textbox_SetFace	COSami+IsHappy
	Event_Textbox_Text	0x0259
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line