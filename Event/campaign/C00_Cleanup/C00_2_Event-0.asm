; Original offset: 0x084a12e8
C00_2_Event_0:
	Event_Textbox_Create	CONell,Position_Bottom
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x004e
	Event_Textbox_SetFace	COAndy+IsHappy
	Event_Textbox_Text	0x004f
	Event_Textbox_SetFace	CONell+IsHappy
	Event_Textbox_Text	0x0050
	Event_Textbox_SetFace	COAndy+IsSad
	Event_Textbox_Text	0x0051
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x0052
	Event_CheckFlag		0x02,C00_2_Event_0A;0x084a13e8
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x0053
	Event_Textbox_Clear
	Event_End

; blank line