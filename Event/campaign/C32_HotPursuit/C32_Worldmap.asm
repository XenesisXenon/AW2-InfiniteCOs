; Original offset: 0x084be610
C32_Worldmap:
	Event_Audio_Start	0x00dc
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COBlackTroop,Position_Bottom
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x07b8
	Event_Textbox_SetFace	COSturm
	Event_Textbox_Text	0x07b9
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x07ba
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x07bb
	Event_Textbox_SetFace	COSturm
	Event_Textbox_Text	0x07bc
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x07bd
	Event_Textbox_SetFace	COSturm
	Event_Textbox_Text	0x07be
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x07bf
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x07c0
	Event_Textbox_SetFace	COSturm
	Event_Textbox_Text	0x07c1
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line