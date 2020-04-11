; Original offset: 0x084af0e8
C15_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0x6a,C15_5_Event_0;0x084aeb50
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag	0xff,C15_5_Event_1;0x084aef60
	Trigger_EndEvent

; blank line