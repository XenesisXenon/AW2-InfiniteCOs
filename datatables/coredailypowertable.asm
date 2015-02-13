;coredailypowertable.asm
;Pointers to Table
	.align
CoreDailyPowerTable:
	;AW2
	.dw	CCOTemplateDailyPowerTable
	.dw	HealTwoHPDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	;Empty Entries
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	;Additional COs
	;AWDS
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	;AW1
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	;SFW
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	;CCOs
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	.dw	CCOTemplateDailyPowerTable
	
;Additional Tables Added Here
	.include	datatables/CODailyPower/CCOTemplateDailyCopt.asm
	.include	datatables/CODailyPower/HealHPDailyCopt.asm
	
	
