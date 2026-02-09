; Original offset: 0x084b69a0
C31_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0x6c,C31_5_Event_0;0x084b5f38
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C31_5_Event_1;0x084b6778
	Trigger_EndEvent

; blank line