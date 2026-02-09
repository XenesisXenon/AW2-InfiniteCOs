; Original offset: 0x084afdc8
C17_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C17_5_Event_0;0x084afa90
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C17_5_Event_1;0x084afc80
	Trigger_EndEvent

; blank line