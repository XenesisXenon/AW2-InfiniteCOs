; Original offset: 0x084a8280
C34_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C34_5_Event_0;0x084a7fd8
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C34_5_Event_1;0x084a81a8
	Trigger_EndEvent

; blank line