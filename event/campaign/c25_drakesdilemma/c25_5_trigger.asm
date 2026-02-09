; Original offset: 0x084b3b28
C25_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C25_5_Event_0;0x084b3780
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C25_5_Event_1;0x084b39e0
	Trigger_EndEvent

; blank line