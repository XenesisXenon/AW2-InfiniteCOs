;Core_Script_Functions.asm
;This is for floating script subroutines that are called without directly
;being linked to other code

.relativeinclude on
	.include	"./copower_scriptfunction_unitspawntarget.asm"
	.include	"./copower_scriptfunction_unitcreate.asm"
	.include	"./campaign_countlosses.asm"
.relativeinclude off
