; Original offset: 0x084bb7e0
C15_Worldmap:
	Event_Audio_Start	0x019b
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COLash,Position_Bottom
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x0489
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x048a
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x048b
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x048c
	Event_Textbox_SetFace	COFlak
	Event_Textbox_Text	0x048d
	Event_Textbox_SetFace	COLash
	Event_Textbox_Text	0x048e
	Event_Textbox_SetFace	COAdder
	Event_Textbox_Text	0x048f
	Event_Textbox_Clear
	Event_Pause		0
	Event_Pause		0
	Event_Textbox_SetColour	ArmyBlueMoon
	Event_Textbox_Create	COOlaf,Position_Top
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x0490
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x0491
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x0492
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x0493
	Event_Textbox_SetColour	ArmyOrangeStar
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x0494
	Event_Textbox_SetColour	ArmyBlueMoon
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x0495
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x0496
	Event_Textbox_SetFace	COOlaf+IsSad
	Event_Textbox_Text	0x0497
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x0498
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x0499
	Event_Textbox_SetColour	ArmyOrangeStar
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x049a
	Event_Textbox_SetColour	ArmyBlueMoon
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x049b
	;Unknown Event
	 .dw	0x0000003f,0x084bbbb0,0x00000025,0x00000000
	Event_Textbox_SetColour	ArmyOrangeStar
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x049c
	Event_Textbox_SetColour	ArmyBlueMoon
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x049d
	Event_Textbox_SetColour	ArmyOrangeStar
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x049e
	Event_Call		C15_Worldmap_0A;0x084bbbb0
	Event_Textbox_SetColour	ArmyBlueMoon
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x049f
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x04a0
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x04a1
	Event_Textbox_SetFace	COGrit+IsHappy
	Event_Textbox_Text	0x04a2
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x04a3
	Event_Textbox_Clear
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line