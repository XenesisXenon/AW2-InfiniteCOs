; Original offset: 0x084b4440
C26_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C26_5_Event_0;0x084b3f58
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C26_5_Event_1;0x084b4268
	Trigger_EndEvent

; blank line