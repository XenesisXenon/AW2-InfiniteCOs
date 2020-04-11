;hookcotable.asm"
;Datatable generator for AW2 COs. Requires Pointer Hack Ultra

;All Hooks to this Table
.org 0x08000A38
	.dw	COStatsAbilitiesDatatable
.org 0x08008A5C
	.dw	COStatsAbilitiesDatatable
.org 0x08008C20
	.dw	COStatsAbilitiesDatatable
.org 0x0801F8E4
	.dw	COStatsAbilitiesDatatable
.org 0x080388E0
	.dw	COStatsAbilitiesDatatable
.org 0x08038E64
	.dw	COStatsAbilitiesDatatable
.org 0x0803990C
	.dw	COStatsAbilitiesDatatable
.org 0x08039980
	.dw	COStatsAbilitiesDatatable
.org 0x08039F50
	.dw	COStatsAbilitiesDatatable
.org 0x08041F24
	.dw	COStatsAbilitiesDatatable
.org 0x08042DDC
	.dw	COStatsAbilitiesDatatable
.org 0x08042E28
	.dw	COStatsAbilitiesDatatable
.org 0x08042E58
	.dw	COStatsAbilitiesDatatable
.org 0x08042EB0
	.dw	COStatsAbilitiesDatatable
.org 0x08042F08
	.dw	COStatsAbilitiesDatatable
.org 0x08042F54
	.dw	COStatsAbilitiesDatatable
.org 0x08042F9C
	.dw	COStatsAbilitiesDatatable
.org 0x08042FF0
	.dw	COStatsAbilitiesDatatable
.org 0x08043044
	.dw	COStatsAbilitiesDatatable
.org 0x0804329C
	.dw	COStatsAbilitiesDatatable
.org 0x080432D4
	.dw	COStatsAbilitiesDatatable
.org 0x08043DA4
	.dw	COStatsAbilitiesDatatable
.org 0x08044200
	.dw	COStatsAbilitiesDatatable
.org 0x08044234
	.dw	COStatsAbilitiesDatatable
;.org 0x08044B94
;	.dw	COStatsAbilitiesDatatable
.org 0x08046864
	.dw	COStatsAbilitiesDatatable
.org 0x08046C3C
	.dw	COStatsAbilitiesDatatable
.org 0x0805BB80
	.dw	COStatsAbilitiesDatatable
.org 0x0805BC68
	.dw	COStatsAbilitiesDatatable
.org 0x0805BDC8
	.dw	COStatsAbilitiesDatatable
.org 0x0805DBD8
	.dw	COStatsAbilitiesDatatable
.org 0x0805DC98
	.dw	COStatsAbilitiesDatatable
.org 0x0806876C
	.dw	COStatsAbilitiesDatatable
.org 0x080688A4
	.dw	COStatsAbilitiesDatatable
.org 0x0807A85C
	.dw	COStatsAbilitiesDatatable
.org 0x0807FAD0
	.dw	COStatsAbilitiesDatatable
.org 0x080806A0
	.dw	COStatsAbilitiesDatatable
.org 0x080853AC
	.dw	COStatsAbilitiesDatatable
.org 0x0861C7F0
	.dw	COStatsAbilitiesDatatable
.org 0x0861CBAC
	.dw	COStatsAbilitiesDatatable
	
;Offset Variants
.org 0x08038834
	.dw	COStatsAbilitiesDatatable+0x50
.org 0x08046854
	.dw	COStatsAbilitiesDatatable+0x50
	


	
;CO Power ASM
	.include "datatables/COStats/COPowers/COPowerDefault.asm"
	.include "datatables/COStats/COPowers/COPowerBlizzard.asm"
	.include "datatables/COStats/COPowers/COPowerBarter.asm"
	.include "datatables/COStats/COPowers/COPowerBlackWave.asm"
	.include "datatables/COStats/COPowers/COPowerBlackStorm.asm"
	.include "datatables/COStats/COPowers/COPowerTsunami.asm"
	.include "datatables/COStats/COPowers/COPowerTyphoon.asm"
	.include "datatables/COStats/COPowers/COPowerWinterFury.asm"
	.include "datatables/COStats/COPowers/COPowerAirborneAssault.asm"
	.include "datatables/COStats/COPowers/COPowerCopterCommand.asm"
	.include "datatables/COStats/COPowers/COPowerMeteorStrike4HP.asm"
	.include "datatables/COStats/COPowers/COPowerMeteorStrike8HP.asm"
	.include "datatables/COStats/COPowers/COPowerEnhancedVision.asm"
	.include "datatables/COStats/COPowers/COPowerGoldRush.asm"
	
;Custom Fix for Meteor Code to allow Stuns
	.include "datatables/COStats/COPowers/hookstunningmeteor.asm"
	
;Custom Fix for HQ Type Numbers
;Not Necessary in the scripting setup
;.org 0x08042DD8
;	add	r0,0x0

;Movement Charts
.org 0x085D511C
	;.include "datatables/COStats/MovementCharts/movementchartclear.asm"
	;.include "datatables/COStats/MovementCharts/movementchartsnow.asm"
	;.include "datatables/COStats/MovementCharts/movementchartrain.asm"
	;.include "datatables/COStats/MovementCharts/movementchartperfect.asm"
	;.include "datatables/COStats/MovementCharts/movementchartsamiclear.asm"
	;.include "datatables/COStats/MovementCharts/movementchartsamisnow.asm"
	;.include "datatables/COStats/MovementCharts/movementchartsamirain.asm"
	.include "datatables/COStats/MovementCharts/movementchartinfclear.asm"
	.include "datatables/COStats/MovementCharts/movementchartinfsnow.asm"
	.include "datatables/COStats/MovementCharts/movementchartinfrain.asm"
	.include "datatables/COStats/MovementCharts/movementchartinfperfect.asm"
	.include "datatables/COStats/MovementCharts/movementchartinfsamiclear.asm"
	.include "datatables/COStats/MovementCharts/movementchartinfsamisnow.asm"
	.include "datatables/COStats/MovementCharts/movementchartinfsamirain.asm"

;AI Activation Rules
	.include "datatables/COStats/AIPowerRules/aiactivatealways.asm"
	.include "datatables/COStats/AIPowerRules/aiactivatecopifnotsnowscopalways.asm"
	.include "datatables/COStats/AIPowerRules/aiactivatecopstartscopend.asm"
	.include "datatables/COStats/AIPowerRules/aiactivateifinjured.asm"
	.include "datatables/COStats/AIPowerRules/aiactivatestartofturn.asm"
	

;Blank Line
