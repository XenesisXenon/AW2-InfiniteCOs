; Original offset: 0x084bd8a0
C27_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COAdder,Position_Bottom
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x0572
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x0573
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x0574
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x0575
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x0576
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x0577
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x0578
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x0579
	Event_Textbox_SetFace	COAdder+IsHappy
	Event_Textbox_Text	0x057a
	Event_Textbox_Clear
	Event_Pause		0
	Event_Pause		0
	Event_Textbox_SetColour	ArmyOrangeStar
	Event_Textbox_Create	COSami,Position_Top
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x057b
	Event_Textbox_SetFace	COOrangeTroop
	Event_Textbox_Text	0x057c
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x057d
	Event_Textbox_SetFace	COOrangeTroop
	Event_Textbox_Text	0x057e
	Event_Textbox_SetFace	COSami+IsSad
	Event_Textbox_Text	0x057f
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line