; Original offset: 0x084a8f90
C36_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C36_5_Event_0;0x084a8b38
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C36_5_Event_1;0x084a8e98
	Trigger_EndEvent

; blank line