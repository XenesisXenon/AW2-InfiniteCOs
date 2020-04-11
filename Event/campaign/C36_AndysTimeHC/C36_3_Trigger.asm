; Original offset: 0x084a8f60
C36_3_Trigger:
	Trigger_ASMCheckTrue	0x08045875
	Trigger_SetFlag	0x00,C36_3_Event_0;0x084a8a08
	Trigger_ASMCheckTrue	0x08045801
	Trigger_SetFlag	0x01,C36_3_Event_1;0x084a0cd8
	Trigger_EndEvent

; blank line