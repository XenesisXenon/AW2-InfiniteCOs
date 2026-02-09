; Original offset: 0x084aeb50
C15_5_Event_0:
	Event_RunASM		0x08034f7d
	Event_Textbox_SetColour	ArmyBlackHole
	Event_Textbox_Create	COLash+IsSad,Position_Bottom
	Event_Textbox_SetFace	COLash+IsSad
	Event_Textbox_Text	0x04af
	Event_Textbox_SetFace	COBlackTroop
	Event_Textbox_Text	0x04b0
	Event_Audio_Stop
	Event_Textbox_Clear
	Event_Pause		0
	Event_Audio_Start	0x01a7
	Event_Textbox_SetColour	ArmyBlueMoon
	Event_Textbox_Create	COOlaf+IsHappy,Position_Top
	Event_Textbox_SetFace	COOlaf+IsHappy
	Event_Textbox_Text	0x04b1
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x04b2
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x04b3
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x04b4
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x04b5
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x04b6
	Event_Textbox_SetFace	COGrit+IsSad
	Event_Textbox_Text	0x04b7

	Event_CheckCO		COAndy,PlayerTwo,0x00000002
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x04b8

	Event_CheckCO		COSami,PlayerTwo,0x00000002
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x04b9

	Event_CheckCO		COMax,PlayerTwo,0x00000002
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x04ba

	Event_CheckCO		COKanbei,PlayerTwo,0x00000002
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x04bb

	Event_CheckCO		COSonja,PlayerTwo,0x00000002
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x04bc

	Event_CheckCO		COSensei,PlayerTwo,0x00000002
	Event_Textbox_SetFace	COGrit
	Event_Textbox_Text	0x04bd
	Event_Textbox_SetFace	COGrit+IsHappy
	Event_Textbox_Text	0x04be
	Event_Textbox_SetFace	COColin
	Event_Textbox_Text	0x04bf
	Event_Textbox_SetFace	COOlaf
	Event_Textbox_Text	0x04c0
	Event_Textbox_SetColour	ArmyOrangeStar
	Event_Textbox_SetFace	CONell+IsHappy
	Event_Textbox_Text	0x04c1
	Event_Textbox_SetFace	COAndy+IsHappy
	Event_Textbox_Text	0x04c2
	Event_Textbox_SetFace	COMax
	Event_Textbox_Text	0x04c3
	Event_Textbox_SetFace	COSami+IsHappy
	Event_Textbox_Text	0x04c4
	Event_Textbox_Clear
	Event_Textbox_SetCurrent
	Event_RunASM		0x08034f8d
	Event_Global_Set	0x24
	Event_End

; blank line