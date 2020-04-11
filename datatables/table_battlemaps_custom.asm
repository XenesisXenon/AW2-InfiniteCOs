;table_custombattlemaps_list.asm

.align 4
Table_Battlemaps_CustomList:
.relativeinclude on
	.include	"BattleMaps/custom_chargetypeAW1_on.asm"
	.include	"BattleMaps/custom_chargetype_on.asm"
	.include	"BattleMaps/custom_chargetypeAW3_on.asm"
	.include	"BattleMaps/custom_chargetype_off.asm"
	.include	"BattleMaps/custom_turntimer_on.asm"
	.include	"BattleMaps/custom_turntimer_off.asm"
;	.include	"BattleMaps/custom_AWDSweather_on.asm"
;	.include	"BattleMaps/custom_AWDSweather_off.asm"
	
	.include	"BattleMaps/custom_versusco_default.asm"
	.include	"BattleMaps/custom_versusco_AW1.asm"
	.include	"BattleMaps/custom_versusco_AW2.asm"
	.include	"BattleMaps/custom_versusco_AW3.asm"
	.include	"BattleMaps/custom_versusco_CCO.asm"
	.include	"BattleMaps/custom_versusco_SFW.asm"
	.include	"BattleMaps/custom_campaignco_on.asm"
	.include	"BattleMaps/custom_campaignco_off.asm"
	.include	"BattleMaps/custom_campaignforces_on.asm"
	.include	"BattleMaps/custom_campaignforces_off.asm"
	.include	"BattleMaps/custom_campaigntutorialskip_on.asm"
	.include	"BattleMaps/custom_campaigntutorialskip_off.asm"
	.include	"BattleMaps/custom_debug_on.asm"
	.include	"BattleMaps/custom_debug_off.asm"
	.include	"BattleMaps/custom_unlockall.asm"
	.include	"BattleMaps/list_end.asm"
.relativeinclude off
;Blank Line