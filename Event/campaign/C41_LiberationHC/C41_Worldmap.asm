; Original offset: 0x084bf620
C41_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COFlak,Position_Top
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x0347
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x0348
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x0349
	Event_Textbox_SetFace	COAdder+IsHappy
	Event_Textbox_Text	0x034a
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x034b
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x034c
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x034d
	Event_Textbox_SetFace	COAdder+IsHappy
	Event_Textbox_Text	0x034e
	Event_Textbox_SetFace	COFlak+IsSad
	Event_Textbox_Text	0x034f
	Event_Textbox_SetFace	COAdder+IsHappy
	Event_Textbox_Text	0x0350
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line