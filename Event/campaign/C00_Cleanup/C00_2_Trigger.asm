; Original offset: 0x084a1c30
C00_2_Trigger:
	Trigger_SelectUnit	Unit_Infantry,0x00000000
	Trigger_SetFlag		0x01,C00_2_Event_0;0x084a12e8
	Trigger_SelectUnit	Unit_APC,0x00000000
	Trigger_SetFlag		0x02,C00_2_Event_1;0x084a1408
	Trigger_EndEvent

; blank line