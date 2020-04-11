; Original offset: 0x084a5688
C04_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag	0xff,C04_5_Event_0;0x084a5248
	Trigger_ASMCheckFalse		0x0803861d
	Trigger_SetFlag	0xff,C04_5_Event_1;0x084a5428
	Trigger_EndEvent

; blank line