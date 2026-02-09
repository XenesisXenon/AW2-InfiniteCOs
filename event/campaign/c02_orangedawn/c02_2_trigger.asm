; Original offset: 0x084a35a8
C02_2_Trigger:
	Trigger_SelectUnit	Unit_TransportCopter,0x00000000
	Trigger_SetFlag	0x00,C02_2_Event_0;0x084a2e00
	Trigger_SelectUnit	Unit_BattleCopter,0x00000000
	Trigger_SetFlag	0x01,C02_2_Event_1;0x084a2e90
	Trigger_SelectUnit	Unit_Artillery,0x00000000
	Trigger_SetFlag	0x02,C02_2_Event_2;0x084a2f00
	Trigger_EndEvent

; blank line