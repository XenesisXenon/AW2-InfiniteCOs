;Campaign_000_Intro.asm
;Cleanup NC (000) World Map Script

.org 0x084BF800
Campaign_000_Event_WorldMapIntro:
	Event_Audio_Play MusicBlackHole
	Event_Textbox_SetColour ArmyBlackHole
	
	Event_Textbox_Create COFlak+IsSad,Position_Bottom
	Event_Textbox_SetFace COFlak+IsSad
	Event_Textbox_Text 0x37
	
	Event_Textbox_SetFace COBlackTroop
	Event_Textbox_Text 0x38
	
	Event_Textbox_SetFace COFlak+IsSad
	Event_Textbox_Text 0x39	

	Event_Textbox_SetFace COBlackTroop
	Event_Textbox_Text 0x3a
	
	Event_Textbox_SetFace COFlak+IsSad
	Event_Textbox_Text 0x3B
	
	Event_Textbox_SetFace COBlackTroop
	Event_Textbox_Text 0x3C
	
	Event_Textbox_SetFace COFlak
	Event_Textbox_Text 0x3D	
	
	Event_Textbox_Clear
	Event_Pause 10
	
	Event_22
	Event_12
	
	Event_RunASM 0x0801987C+1
	Event_3A
	
	Event_End

.org 0x084A0F18	
Campaign_000_Event_Premission:
	Event_RunASM		0x08019894+1
	Event_Audio_Play	MusicOrangeStar
	Event_Textbox_Create	CONell,Position_Top
	
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x3E
	Event_Textbox_SetFace	COOrangeTroop
	Event_Textbox_Text	0x3F
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x40
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x41
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x42
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x43
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x44
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x45
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x46
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x47
	Event_Audio_Stop
	Event_Textbox_Clear
	Event_End

.org 0x084A10B8
Campaign_000_Event_BasicInfo:
	Event_InfoPanel_Hide
	Event_Textbox_Create	CONell,Position_Top
	Event_Cursor_Position	0xE,0
	Event_Icon_Show	0x20,0x70,Cursor_Ring
	Event_Icon_Show	0x10,0x80,Cursor_Ring
	Event_Icon_Show	0x00,0x50,Cursor_Ring
	Event_Icon_Show	0x20,0x90,Cursor_Ring
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x48
	Event_Textbox_Clear
	Event_Cursor_Position	0x2,0x8
	Event_Textbox_Create	CONell,Position_Bottom
	Event_Icon_Show	0xC0,0x20,Cursor_Ring
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x49
	Event_Icon_Clear
	Event_Textbox_SetFace	COAndy
	Event_Textbox_Text	0x4A
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x4B
	Event_Textbox_Clear
	Event_Textbox_Create	CONell,Position_Top
	Event_Icon_Show	0x20,0x80,Cursor_CheckArrow_R
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x4C
	Event_Icon_Clear
	Event_Textbox_Clear
	Event_InfoPanel_Show
	Event_End
	
	
;Blank Line