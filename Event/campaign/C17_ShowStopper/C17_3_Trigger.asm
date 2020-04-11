; Original offset: 0x084afd98
C17_3_Trigger:
	Trigger_ASMCheckTrue	0x080458cd
	Trigger_SetFlag	0x00,C17_3_Event_0;0x084af9e0
	Trigger_ASMCheckTrue	0x08045819
	Trigger_SetFlag	0x01,C17_3_Event_1;0x084a0cd8
	Trigger_EndEvent

; blank line