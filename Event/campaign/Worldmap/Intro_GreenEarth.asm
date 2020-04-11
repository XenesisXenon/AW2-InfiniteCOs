; Original offset: 0x084ba210
Event_Intro_GreenEarth:
	Event_Audio_Start	0x01a5
	Event_Textbox_SetColour	ArmyGreenEarth
	Event_Textbox_Create	CODrake,Position_Top
	Event_Textbox_SetFace	CODrake
	Event_Textbox_Text	0x04d6
	Event_Textbox_SetFace	COEagle
	Event_Textbox_Text	0x04d7
	Event_Textbox_SetFace	CODrake
	Event_Textbox_Text	0x04d8
	Event_Textbox_SetFace	COEagle
	Event_Textbox_Text	0x04d9
	Event_Textbox_SetFace	COJess+IsHappy
	Event_Textbox_Text	0x04da
	Event_Textbox_SetFace	CODrake+IsHappy
	Event_Textbox_Text	0x04db
	Event_Textbox_SetFace	COJess
	Event_Textbox_Text	0x04dc
	Event_Textbox_SetFace	CODrake+IsHappy
	Event_Textbox_Text	0x04dd
	Event_Textbox_SetFace	COEagle+IsSad
	Event_Textbox_Text	0x04de
	Event_Textbox_SetFace	COJess+IsSad
	Event_Textbox_Text	0x04df
	Event_Textbox_SetFace	CODrake+IsSad
	Event_Textbox_Text	0x04e0
	Event_Textbox_SetFace	COEagle
	Event_Textbox_Text	0x04e1
	Event_Textbox_SetFace	CODrake
	Event_Textbox_Text	0x04e2
	Event_Textbox_SetFace	COJess
	Event_Textbox_Text	0x04e3
	Event_Textbox_SetFace	CODrake+IsHappy
	Event_Textbox_Text	0x04e4
	Event_Textbox_Clear
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line