; Original offset: 0x084bfec0
C04_Worldmap:
	Event_Audio_Start	0x019d
	Event_Textbox_Create	COSami,Position_Top
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x0140
	Event_Textbox_SetFace	CONell
	Event_Textbox_Text	0x0141
	Event_Textbox_SetFace	COSami
	Event_Textbox_Text	0x0142
	Event_Textbox_SetFace	CONell+IsSad
	Event_Textbox_Text	0x0143
	Event_Textbox_Clear
	Event_Pause		0
	Event_Dummy_0x22
	Event_Controls_Unlock
	Event_RunASM		0x0801987d
	;Unknown Event
	 .dw	0x0000003a,0x00000000,0x00000000,0x00000000
	Event_End

; blank line