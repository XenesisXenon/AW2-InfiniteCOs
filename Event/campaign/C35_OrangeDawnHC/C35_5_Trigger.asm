; Original offset: 0x084a8758
C35_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C35_5_Event_0;0x084a8400
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C35_5_Event_1;0x084a8660
	Trigger_EndEvent

; blank line