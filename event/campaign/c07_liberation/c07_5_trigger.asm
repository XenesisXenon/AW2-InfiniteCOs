; Original offset: 0x084a7bd8
C07_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0x69,C07_5_Event_0;0x084a7670
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C07_5_Event_1;0x084a79d0
	Trigger_EndEvent

; blank line