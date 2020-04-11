; Original offset: 0x084b2320
C22_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0x67,C22_5_Event_0;0x084b2058
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C22_5_Event_1;0x084b2198
	Trigger_EndEvent

; blank line