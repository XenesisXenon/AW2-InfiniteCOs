; Original offset: 0x084abb10
C08_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C08_5_Event_0;0x084ab778
	Trigger_ASMCheckFalse		0x0803861d
	Trigger_SetFlag	0xff,C08_5_Event_1;0x084ab928
	Trigger_EndEvent

; blank line