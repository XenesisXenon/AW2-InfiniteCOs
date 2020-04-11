; Original offset: 0x084b4410
C26_3_Trigger:
	Trigger_ASMCheckTrue	0x08045d11
	Trigger_SetFlag	0xff,C26_3_Event_0;0x084a0cd8
	Trigger_ASMCheckTrue	0x080458f9
	Trigger_SetFlag	0x00,C26_3_Event_1;0x084b3ea8
	Trigger_EndEvent

; blank line