; Original offset: 0x084a93f8
C37_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C37_5_Event_0;0x084a9150
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C37_5_Event_1;0x084a92e0
	Trigger_EndEvent

; blank line