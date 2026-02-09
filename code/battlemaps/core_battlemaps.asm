;core_battlemaps.asm

.relativeinclude on
	.include "bitcheck_globalstatus.asm"
	.include "bitset_unlockall.asm"
	.include "bitset_toggleglobal.asm"
	.include "bitset_clearversusco.asm"
	.include "bitset_clearchargetype.asm"
	.include "availcheck_turntimer.asm"
	.include "availcheck_unlockall.asm"
	.include "availcheck_chargetype.asm"
	.include "availcheck_debug.asm"
	.include "availcheck_campaignco.asm"
	.include "availcheck_versusco.asm"
	.include "availcheck_campaignforces.asm"
	.include "availcheck_campaigntutorialskip.asm"
	.include "availcheck_awdsweather.asm"
	
	.include "core_titletextswap.asm"
	.include "core_battlemapslist_swap.asm"
.relativeinclude off
