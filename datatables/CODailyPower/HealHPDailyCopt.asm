;CCOTemplateDailyCopt.asm
	.align
HealTwoHPDailyPowerTable:
	;CO Power Animation Graphic (+28/+0)
	.db 2
	.db 0
	
	;Padding
	.dh 0x0
	
	;Animation Check - COP (+32/+4)
	.dw COPCheckAllUnits+1
	
	;Animation Effect - COP (+36/+8)
	.dw COPEffectHealTwoHP+1
	
	;Standard COP Type (+40/+12)
	.dw COPEffectNone+1;COPowerTypeStandard+1
	
	;Sound Effect (COP) (+44/16)
	.dh 183
	.dh 184
	

