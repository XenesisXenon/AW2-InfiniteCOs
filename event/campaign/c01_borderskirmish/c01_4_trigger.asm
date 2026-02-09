; Original offset: 0x084a2910
C01_4_Trigger:
	Trigger_SelectMenu	0x18,0x00000000
	Trigger_ASMCheckTrue	0x0804599d
	Trigger_SetFlag		0x05,0x00000000
	Trigger_SelectMenu	0x18,0x00000000
	Trigger_SetFlag		0x05,C01_4_Event_0;0x084a2218
	Trigger_IsFlagFalse	0x03,0x00000000
	Trigger_IsFlagFalse	0x04,0x00000000
	Trigger_SelectMenu	0x29,0x00000000
	Trigger_SetFlag		0xff,C01_4_Event_1;0x084a21c8
	Trigger_IsFlagTrue	0x03,0x00000000
	Trigger_IsFlagFalse	0x04,0x00000000
	Trigger_SelectMenu	0x29,0x00000000
	Trigger_SetFlag		0xff,C01_4_Event_1;0x084a21c8
	Trigger_IsFlagFalse	0x03,0x00000000
	Trigger_IsFlagTrue	0x04,0x00000000
	Trigger_SelectMenu	0x29,0x00000000
	Trigger_SetFlag		0xff,C01_4_Event_1;0x084a21c8
	Trigger_EndEvent

; blank line