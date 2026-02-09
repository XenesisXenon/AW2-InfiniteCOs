;core_damageformula.asm"

	.align 4
	.relativeinclude on
	.include "formula_halfhpdamage.asm"
	
	.include "calc_generatepointer.asm"
	
	.include "calc_firepowerboost.asm"
	.include "calc_terrainstarboost.asm"
	.include "calc_terrainfirepowerboost.asm"
	.include "calc_daybasedfirepowerboost.asm"
	.include "calc_towerfirepowerboost.asm"
	.include "calc_weatherfirepowerboost.asm"
	.include "calc_firepower_uniqueunit.asm"
	.include "calc_firepower_duplicateunit.asm"
	.include "calc_firepower_slayer.asm"
	.include "calc_firepower_dynamic.asm"
	
	.include "calc_towerdefenceboost.asm"
	.include "calc_defenceboost.asm"
	.include "calc_defence_directcombat.asm"
	.include "calc_defence_rangedcombat.asm"
	.include "calc_defence_uniqueunit.asm"
	.include "calc_defence_armysize.asm"
	.include "calc_defence_dynamic.asm"
	
	.include "calc_luckboost.asm"

	.include "core_statcalculator.asm"
	.include "core_firepowerboost.asm"
	.include "core_defenceboost.asm"
	.include "core_defencetotalcap.asm"
	.include "core_terrainpoweradjustment.asm"
	.include "core_terrainstardisplayadjustment.asm"
	.include "core_infoboxhpdisplayadjust.asm"
	.include "core_unithpdisplayhidden.asm"
	.include "core_damagereflectionabilityfunction.asm"
	
	.include "forceranks/coreforcerankfirepower.asm"
	.include "forceranks/coreforcerankdefence.asm"
	.include "forceranks/coreforcerankluck.asm"
	.include "forceranks/coreforcerankchecker.asm"
	
	.include "list_calculations.asm"
	.relativeinclude off
;Blank Line	
