; Original offset: 0x084a45c0
C03_2_Trigger:
	Trigger_SelectUnit	Unit_Rockets,0x00000000
	Trigger_SetFlag		0x00,C03_2_Event_0;0x084a39c8
	Trigger_SelectUnit	Unit_BattleCopter,0x00000000
	Trigger_SetFlag		0x01,C03_2_Event_1;0x084a3a58
	Trigger_EndEvent

; blank line