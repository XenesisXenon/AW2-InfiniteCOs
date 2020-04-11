; Original offset: 0x084b0d48
C19_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C19_5_Event_0;0x084b0930
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C19_5_Event_1;0x084b0c10
	Trigger_EndEvent

; blank line