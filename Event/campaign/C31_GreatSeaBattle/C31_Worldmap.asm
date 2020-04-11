; Original offset: 0x084be2b0
C31_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COBlackTroop,Position_Bottom
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x061d
	Event_Textbox_SetFace	COHawke+IsSad
	Event_Textbox_Text	0x061e
	Event_Textbox_SetFace	COSturm
	Event_Textbox_Text	0x061f
	Event_Textbox_SetFace	COHawke
	Event_Textbox_Text	0x0620
	Event_Textbox_SetFace	COSturm
	Event_Textbox_Text	0x0621
	Event_Textbox_SetFace	COHawke
	Event_Textbox_Text	0x0622
	Event_Textbox_SetFace	COSturm
	Event_Textbox_Text	0x0623
	Event_Textbox_SetFace	COHawke+IsSad
	Event_Textbox_Text	0x0624
	Event_Textbox_Clear
	Event_Pause		0
	Event_Pause		0
	Event_Textbox_SetColour	ArmyGreenEarth
	Event_Textbox_Create	COEagle,Position_Top
	Event_Textbox_SetFace	COEagle
	Event_Textbox_Text	0x0625
	Event_Textbox_SetFace	CODrake
	Event_Textbox_Text	0x0626
	Event_Textbox_SetFace	COJess
	Event_Textbox_Text	0x0627
	Event_Textbox_SetColour	ArmyYellowComet
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x0628
	Event_Textbox_SetColour	ArmyGreenEarth
	Event_Textbox_SetFace	CODrake+IsHappy
	Event_Textbox_Text	0x0629
	Event_Textbox_SetColour	ArmyYellowComet
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x062a
	Event_Textbox_SetColour	ArmyOrangeStar
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x062b
	Event_Textbox_SetColour	ArmyGreenEarth
	Event_Textbox_SetFace	COJess+IsHappy
	Event_Textbox_Text	0x062c
	Event_Textbox_SetFace	CODrake+IsHappy
	Event_Textbox_Text	0x062d
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line