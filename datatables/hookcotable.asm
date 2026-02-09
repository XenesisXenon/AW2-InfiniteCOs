;hookcotable.asm"
;datatable generator for aw2 cos. requires pointer hack ultra

;all hooks to this table
.org 0x08000a38
	.dw	costatsabilitiesdatatable
.org 0x08008a5c
	.dw	costatsabilitiesdatatable
.org 0x08008c20
	.dw	costatsabilitiesdatatable
.org 0x0801f8e4
	.dw	costatsabilitiesdatatable
.org 0x080388e0
	.dw	costatsabilitiesdatatable
.org 0x08038e64
	.dw	costatsabilitiesdatatable
.org 0x0803990c
	.dw	costatsabilitiesdatatable
.org 0x08039980
	.dw	costatsabilitiesdatatable
.org 0x08039f50
	.dw	costatsabilitiesdatatable
.org 0x08041f24
	.dw	costatsabilitiesdatatable
.org 0x08042ddc
	.dw	costatsabilitiesdatatable
.org 0x08042e28
	.dw	costatsabilitiesdatatable
.org 0x08042e58
	.dw	costatsabilitiesdatatable
.org 0x08042eb0
	.dw	costatsabilitiesdatatable
.org 0x08042f08
	.dw	costatsabilitiesdatatable
.org 0x08042f54
	.dw	costatsabilitiesdatatable
.org 0x08042f9c
	.dw	costatsabilitiesdatatable
.org 0x08042ff0
	.dw	costatsabilitiesdatatable
.org 0x08043044
	.dw	costatsabilitiesdatatable
.org 0x0804329c
	.dw	costatsabilitiesdatatable
.org 0x080432d4
	.dw	costatsabilitiesdatatable
.org 0x08043da4
	.dw	costatsabilitiesdatatable
.org 0x08044200
	.dw	costatsabilitiesdatatable
.org 0x08044234
	.dw	costatsabilitiesdatatable
;.org 0x08044b94
;	.dw	costatsabilitiesdatatable
.org 0x08046864
	.dw	costatsabilitiesdatatable
.org 0x08046c3c
	.dw	costatsabilitiesdatatable
.org 0x0805bb80
	.dw	costatsabilitiesdatatable
.org 0x0805bc68
	.dw	costatsabilitiesdatatable
.org 0x0805bdc8
	.dw	costatsabilitiesdatatable
.org 0x0805dbd8
	.dw	costatsabilitiesdatatable
.org 0x0805dc98
	.dw	costatsabilitiesdatatable
.org 0x0806876c
	.dw	costatsabilitiesdatatable
.org 0x080688a4
	.dw	costatsabilitiesdatatable
.org 0x0807a85c
	.dw	costatsabilitiesdatatable
.org 0x0807fad0
	.dw	costatsabilitiesdatatable
.org 0x080806a0
	.dw	costatsabilitiesdatatable
.org 0x080853ac
	.dw	costatsabilitiesdatatable
.org 0x0861c7f0
	.dw	costatsabilitiesdatatable
.org 0x0861cbac
	.dw	costatsabilitiesdatatable
	
;offset variants
.org 0x08038834
	.dw	costatsabilitiesdatatable+0x50
.org 0x08046854
	.dw	costatsabilitiesdatatable+0x50
	


	
;co power asm
	.include "datatables/costats/copowers/copowerdefault.asm"
	.include "datatables/costats/copowers/copowerblizzard.asm"
	.include "datatables/costats/copowers/copowerbarter.asm"
	.include "datatables/costats/copowers/copowerblackwave.asm"
	.include "datatables/costats/copowers/copowerblackstorm.asm"
	.include "datatables/costats/copowers/copowertsunami.asm"
	.include "datatables/costats/copowers/copowertyphoon.asm"
	.include "datatables/costats/copowers/copowerwinterfury.asm"
	.include "datatables/costats/copowers/copowerairborneassault.asm"
	.include "datatables/costats/copowers/copowercoptercommand.asm"
	.include "datatables/costats/copowers/copowermeteorstrike4hp.asm"
	.include "datatables/costats/copowers/copowermeteorstrike8hp.asm"
	.include "datatables/costats/copowers/copowerenhancedvision.asm"
	.include "datatables/costats/copowers/copowergoldrush.asm"
	
;custom fix for meteor code to allow stuns
	.include "datatables/costats/copowers/hookstunningmeteor.asm"
	
;custom fix for hq type numbers
;not necessary in the scripting setup
;.org 0x08042dd8
;	add	r0,0x0

;movement charts
.org 0x085d511c
	;.include "datatables/costats/movementcharts/movementchartclear.asm"
	;.include "datatables/costats/movementcharts/movementchartsnow.asm"
	;.include "datatables/costats/movementcharts/movementchartrain.asm"
	;.include "datatables/costats/movementcharts/movementchartperfect.asm"
	;.include "datatables/costats/movementcharts/movementchartsamiclear.asm"
	;.include "datatables/costats/movementcharts/movementchartsamisnow.asm"
	;.include "datatables/costats/movementcharts/movementchartsamirain.asm"
	.include "datatables/costats/movementcharts/movementchartinfclear.asm"
	.include "datatables/costats/movementcharts/movementchartinfsnow.asm"
	.include "datatables/costats/movementcharts/movementchartinfrain.asm"
	.include "datatables/costats/movementcharts/movementchartinfperfect.asm"
	.include "datatables/costats/movementcharts/movementchartinfsamiclear.asm"
	.include "datatables/costats/movementcharts/movementchartinfsamisnow.asm"
	.include "datatables/costats/movementcharts/movementchartinfsamirain.asm"

;ai activation rules
	.include "datatables/costats/aipowerrules/aiactivatealways.asm"
	.include "datatables/costats/aipowerrules/aiactivatecopifnotsnowscopalways.asm"
	.include "datatables/costats/aipowerrules/aiactivatecopstartscopend.asm"
	.include "datatables/costats/aipowerrules/aiactivateifinjured.asm"
	.include "datatables/costats/aipowerrules/aiactivatestartofturn.asm"
	

;blank line
