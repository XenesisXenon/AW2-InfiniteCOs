; Original offset: 0x084bf020
C37_Worldmap:
	Event_Audio_Start	0x019d
	Event_Textbox_SetColour	ArmyOrangeStar
	Event_Textbox_Create	COSami,Position_Top
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x02bb
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x02bc
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x02bd
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x02be
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x02bf
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x02c0
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x02c1
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line