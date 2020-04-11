; Original offset: 0x084a29a0
C01_5_Trigger:
	Trigger_ASMCheckTrue	0x0803861d
	Trigger_SetFlag		0xff,C01_5_Event_0;0x084a2578
	Trigger_ASMCheckFalse	0x0803861d
	Trigger_SetFlag		0xff,C01_5_Event_1;0x084a2748
	Trigger_EndEvent

; blank line