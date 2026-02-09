; Original offset: 0x084a6768
C05_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C05_5_Event_0;0x084a61e8
	Trigger_ASMCheckFalse		0x0803861d
	Trigger_SetFlag	0xff,C05_5_Event_1;0x084a6508
	Trigger_EndEvent

; blank line