;table_custombattlemaps_list.asm

.align 4
Table_Battlemaps_CustomList:
.relativeinclude on
	.include	"battlemaps/custom_chargetypeaw1_on.asm"
	.include	"battlemaps/custom_chargetype_on.asm"
	.include	"battlemaps/custom_chargetypeaw3_on.asm"
	.include	"battlemaps/custom_chargetype_off.asm"
	.include	"battlemaps/custom_turntimer_on.asm"
	.include	"battlemaps/custom_turntimer_off.asm"
;	.include	"battlemaps/custom_awdsweather_on.asm"
;	.include	"battlemaps/custom_awdsweather_off.asm"
	
	.include	"battlemaps/custom_versusco_default.asm"
	.include	"battlemaps/custom_versusco_aw1.asm"
	.include	"battlemaps/custom_versusco_aw2.asm"
	.include	"battlemaps/custom_versusco_aw3.asm"
	.include	"battlemaps/custom_versusco_cco.asm"
	.include	"battlemaps/custom_versusco_sfw.asm"
	.include	"battlemaps/custom_campaignco_on.asm"
	.include	"battlemaps/custom_campaignco_off.asm"
	.include	"battlemaps/custom_campaignforces_on.asm"
	.include	"battlemaps/custom_campaignforces_off.asm"
	.include	"battlemaps/custom_campaigntutorialskip_on.asm"
	.include	"battlemaps/custom_campaigntutorialskip_off.asm"
	.include	"battlemaps/custom_debug_on.asm"
	.include	"battlemaps/custom_debug_off.asm"
	.include	"battlemaps/custom_unlockall.asm"
	.include	"battlemaps/list_end.asm"
.relativeinclude off
;Blank Line
