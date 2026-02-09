; Original offset: 0x084b4aa0
C27_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C27_5_Event_0;0x084b4760
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C27_5_Event_1;0x084b49a0
	Trigger_EndEvent

; blank line