; Original offset: 0x084b75e8
C32_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C32_5_Event_0;0x084b6d90
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C32_5_Event_1;0x084b7290
	Trigger_EndEvent

; blank line