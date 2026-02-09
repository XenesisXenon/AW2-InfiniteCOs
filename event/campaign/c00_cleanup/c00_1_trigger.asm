; Original offset: 0x084a1be0
C00_1_Trigger:
	Trigger_Time	PlayerOne,1
	Trigger_SetFlag	0xff,C00_1_Event_0;0x084a10b8
	Trigger_Time	PlayerTwo,1
	Trigger_SetFlag	0xff,C00_1_Event_1;0x084a1678
	Trigger_Time	PlayerOne,2
	Trigger_SetFlag	0xff,C00_1_Event_2;0x084a16c8
	Trigger_Time	PlayerOne,0
	Trigger_ASMCheckTrue	0x08045925
	Trigger_SetFlag	0x00,C00_1_Event_3;0x084a1ac8
	Trigger_EndEvent

; blank line