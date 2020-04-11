; Original offset: 0x084ae348
C13_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0x01,C13_5_Event_0;0x084ae070
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0x02,C13_5_Event_1;0x084ae230
	Trigger_EndEvent

; blank line