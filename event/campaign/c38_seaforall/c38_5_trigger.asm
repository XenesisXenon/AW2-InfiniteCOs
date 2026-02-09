; Original offset: 0x084a9fb0
C38_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C38_5_Event_0;0x084a9a08
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C38_5_Event_1;0x084a9d88
	Trigger_EndEvent

; blank line