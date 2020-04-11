; Original offset: 0x084a1d58
C00_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag		0xff,C00_5_Event_0;0x084a1968
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag		0xff,C00_5_Event_1;x084a1a48
	Trigger_EndEvent

; blank line