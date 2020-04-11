; Original offset: 0x084b5600
C29_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C29_5_Event_0;0x084b52d8
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C29_5_Event_1;0x084b54d8
	Trigger_EndEvent

; blank line