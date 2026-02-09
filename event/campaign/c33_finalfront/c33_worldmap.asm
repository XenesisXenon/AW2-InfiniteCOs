; Original offset: 0x084be7f0
C33_Worldmap:
	Event_Audio_Start	0x00dc
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COSturm,Position_Top
	Event_Textbox_SetFace	COSturm
	Event_Textbox_Text	0x080c
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x080d
	Event_Textbox_SetFace	COSturm
	Event_Textbox_Text	0x080e
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x080f
	Event_Textbox_SetFace	COSturm
	Event_Textbox_Text	0x0810
	Event_Textbox_SetFace	COLash+IsSad
	Event_Textbox_Text	0x0811
	Event_Textbox_SetFace	COSturm
	Event_Textbox_Text	0x0812
	Event_Textbox_SetFace	COLash+IsSad
	Event_Textbox_Text	0x0813
	Event_Textbox_SetFace	COSturm
	Event_Textbox_Text	0x0814
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x0815
	Event_Textbox_SetFace	COSturm
	Event_Textbox_Text	0x0816
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line