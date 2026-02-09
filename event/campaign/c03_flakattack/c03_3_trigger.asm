; Original offset: 0x084a45e8
C03_3_Trigger:
	Trigger_ASMCheckTrue	0x08045849
	Trigger_SetFlag		0x02,C03_3_Event_0;0x084a3d18
	Trigger_Time		PlayerOne,0
	Trigger_ASMCheckTrue	0x080745a9
	Trigger_SetFlag		0x9f,C03_3_Event_1;0x084a3ae8
	Trigger_Time		PlayerOne,0
	Trigger_ASMCheckTrue	0x08074599
	Trigger_SetFlag		0x9e,C03_3_Event_2;0x084a3e28
	Trigger_EndEvent

; blank line