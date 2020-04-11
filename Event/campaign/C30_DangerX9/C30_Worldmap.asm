; Original offset: 0x084be010
C30_Worldmap:
	Event_Audio_Start	0x01a5
	Event_Textbox_SetColour	ArmyGreenEarth
	Event_Textbox_Create	COJess,Position_Top
	Event_Textbox_SetFace	COJess
	Event_Textbox_Text	0x05f5
	Event_Textbox_SetFace	CODrake
	Event_Textbox_Text	0x05f6
	Event_Textbox_SetFace	COEagle
	Event_Textbox_Text	0x05f7
	Event_Textbox_SetFace	COJess
	Event_Textbox_Text	0x05f8
	Event_Textbox_SetFace	COEagle+IsHappy
	Event_Textbox_Text	0x05f9
	Event_Textbox_SetFace	COJess+IsHappy
	Event_Textbox_Text	0x05fa
	Event_Textbox_SetFace	CODrake+IsHappy
	Event_Textbox_Text	0x05fb
	Event_Textbox_SetFace	COEagle
	Event_Textbox_Text	0x05fc
	Event_Textbox_SetFace	CODrake
	Event_Textbox_Text	0x05fd
	Event_Textbox_SetFace	COEagle
	Event_Textbox_Text	0x05fe
	Event_Textbox_SetFace	COJess
	Event_Textbox_Text	0x05ff
	Event_Textbox_SetFace	CODrake+IsHappy
	Event_Textbox_Text	0x0600
	Event_Textbox_SetFace	COJess
	Event_Textbox_Text	0x0601
	Event_Textbox_SetFace	COEagle+IsSad
	Event_Textbox_Text	0x0602
	Event_Textbox_SetFace	COJess
	Event_Textbox_Text	0x0603
	Event_Textbox_SetFace	CODrake
	Event_Textbox_Text	0x0604
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line