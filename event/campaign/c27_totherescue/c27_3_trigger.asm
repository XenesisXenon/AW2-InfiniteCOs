; Original offset: 0x084b4a68
C27_3_Trigger:
	Trigger_ASMCheckTrue	0x080457e9
	Trigger_SetFlag	0x01,C27_3_Event_0;0x084a0cd8
	Trigger_ASMCheckFalse	0x080457e9
	Trigger_ASMCheckTrue	0x08045d4d
	Trigger_SetFlag	0x00,C27_3_Event_1;0x084b46d0
	Trigger_EndEvent

; blank line