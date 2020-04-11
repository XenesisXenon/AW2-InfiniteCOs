; Original offset: 0x084a3550
C02_0_Trigger:
	Trigger_Time	PlayerOne,1
	Trigger_SetFlag	0xff,C02_0_Event_0;0x084a29e0
	Trigger_Time	PlayerOne,0
	Trigger_ASMCheckTrue	0x08045a79
	Trigger_SetFlag	0x06,C02_0_Event_1;0x084a2ff0
	Trigger_EndEvent

; blank line