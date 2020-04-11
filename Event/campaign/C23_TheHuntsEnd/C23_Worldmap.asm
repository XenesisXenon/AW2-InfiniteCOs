; Original offset: 0x084bcf70
C23_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COAdder+IsSad,Position_Bottom
	Event_Textbox_SetFace	COAdder+IsSad
	Event_Textbox_Text	0x077b
	Event_Textbox_SetFace	COHawke
	Event_Textbox_Text	0x077c
	Event_Textbox_SetFace	COAdder+IsSad
	Event_Textbox_Text	0x077d
	Event_Textbox_SetFace	COHawke
	Event_Textbox_Text	0x077e
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x077f
	Event_Textbox_SetFace	COHawke
	Event_Textbox_Text	0x0780
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x0781
	Event_Textbox_SetFace	COHawke
	Event_Textbox_Text	0x0782
	Event_Textbox_Clear
	Event_Pause		0
	Event_Pause		0
	Event_Textbox_SetColour	ArmyYellowComet
	Event_Textbox_Create	COSonja,Position_Top
	Event_Textbox_SetFace	COSonja
	Event_Textbox_Text	0x0783
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x0784
	Event_CheckFlag		0x24,C23_Worldmap_0A;0x084bd230
	Event_Textbox_SetFace	COYellowTroop
	Event_Textbox_Text	0x078a
	Event_Textbox_SetColour	ArmyOrangeStar
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x078b
	Event_Textbox_SetColour	ArmyYellowComet
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x078c
	Event_Textbox_SetColour	ArmyOrangeStar
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x078d
	Event_Textbox_SetColour	ArmyYellowComet
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x078e
	Event_Call		C23_Worldmap_0B;0x084bd320
	Event_Textbox_SetFace	COYellowTroop
	Event_Textbox_Text	0x0785
	Event_Textbox_SetColour	ArmyBlueMoon
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x0786
	Event_Textbox_SetColour	ArmyYellowComet
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x0787
	Event_Textbox_SetColour	ArmyBlueMoon
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x0788
	Event_Textbox_SetColour	ArmyYellowComet
	Event_Textbox_SetFace	COKanbei
	Event_Textbox_Text	0x0789
	Event_Call		C23_Worldmap_0B;0x084bd320
	Event_Textbox_Clear
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line