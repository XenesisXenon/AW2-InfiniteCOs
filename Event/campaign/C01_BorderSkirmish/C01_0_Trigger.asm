; Original offset: 0x084a2848
C01_0_Trigger:
	Trigger_Time		PlayerOne,1
	Trigger_SetFlag		0xff,C01_0_Event_0;0x084a1d98
	Trigger_Time		PlayerOne,0
	Trigger_ASMCheckTrue	0x080459e5
	Trigger_SetFlag		0x06,C01_0_Event_1;0x084a2498
	Trigger_EndEvent

; blank line