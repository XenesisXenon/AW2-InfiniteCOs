;Core_Script_Functions.asm
;This is for floating script subroutines that are called without directly
;being linked to other code

.relativeinclude on
	.include	"./COPower_Scriptfunction_UnitSpawnTarget.asm"
	.include	"./COPower_Scriptfunction_UnitCreate.asm"
	.include	"./Campaign_CountLosses.asm"
.relativeinclude off