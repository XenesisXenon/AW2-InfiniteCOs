;hookcographicsandpowertable.asm"
;Modifies the CO Power And Graphics Table

;All pointers to the COGraphicsPower Table
.org 0x08039B7C
	.dw COGraphicsPowerEffectsTable
.org 0x08043AF8	;
	.dw COGraphicsPowerEffectsTable
.org 0x08043B38
	.dw COGraphicsPowerEffectsTable
.org 0x08043BEC
	.dw COGraphicsPowerEffectsTable
.org 0x08043C1C
	.dw COGraphicsPowerEffectsTable
.org 0x08043E88 ;
	.dw COGraphicsPowerEffectsTable
.org 0x08043FA4 ;Max CO Mod
	.dw COGraphicsPowerEffectsTable
.org 0x08043FD4 ;Max CO Mod
	.dw COGraphicsPowerEffectsTable
.org 0x080445E8
	.dw COGraphicsPowerEffectsTable
.org 0x08044720
	.dw COGraphicsPowerEffectsTable
.org 0x08044B04
	.dw COGraphicsPowerEffectsTable
;.org 0x08044B98
;	.dw COGraphicsPowerEffectsTable
.org 0x08091384
	.dw COGraphicsPowerEffectsTable
	
;This is a modification to allow it to support the Daily Power function.
;0x08039B7C - Bad Pointer Fix CO Power Sound Effect - Currently uses the COP's
;Minor.
;0x080445B0 - Bad Pointer fix CO Power Graphic/Palette
;.org 0x080445B4
;	ldr	r4,=COGraphicsAndPowerTableGraphicIDA+1
;	bx	r4
;	.pool

;;0x08044AB8 - Bad Pointer fix CO Power Graphic/Palette
;.org 0x08044ABA
;	ldr	r1,=COGraphicsAndPowerTableGraphicIDB+1
;	bx	r1
;	.pool

;0x08044B84 - Nullpointer Fix CO Power Type General Pointer
;.org 0x08044B5E
;	ldr	r1,=COGraphicsAndPowerTableGeneralCOP+1
;	bx	r1
;	.pool

;0x080446AD - Nullpointer Fix Unit Check (+0x20)
;.org 0x0804467C
;	ldr	r0,=COGraphicsAndPowerTableUnitCheck+1
;	bx	r0
;	.pool
	
;0x0804470C - Nullpointer Fix Unit Effect (+0x24)
;.org 0x080446E2
;	ldr	r0,=COGraphicsAndPowerTableUnitEffectB+1
;	bx	r0
;	.pool

;.org 0x08044752
;	ldr	r0,=COGraphicsAndPowerTableUnitEffect+1
;	bx	r0
;	.pool

;0x0804477C - Nullpointer Fix Unit Animation Effect

	
.org 0x08017F70
	mov	r1,MaxCOId+1
	
;Fixes for Looping
.org 0x08043AA4
	mov	r1,MaxCOId+1
;Palettes	
.org 0x08043AC6	
	mov	r1,MaxCOId+1
.org 0x08043ACE
	mov	r1,MaxCOId+1
;Face (Important)
.org 0x08043E4C
	mov	r1,MaxCOId+1
.org 0x08043E58
	mov	r1,MaxCOId+1
	
.org 0x08043F6A
	mov	r1,MaxCOId+1
	
;Fixes Faces
.org 0x08017F96
	mov	r1,MaxCOId+1

;Happy Face Start ID
.org 0x0807ACD0
	add	r0,MaxCOId+1

	
;Fix For Save Face (Scripts)
;.org 0x08488BC
;	.db	MaxCOId+1
.org 0x0849A808
	.db	MaxCOId+1
.org 0x0849F520
	.db	MaxCOId+1


;Sad Face Start ID	
.org 0x0807AD16
	add	r0,((MaxCOId+1)*2)	


;Includes the Checks and Effects
	.include "datatables/cographicandpower/powerchecks/checkallunits.asm"
	.include "datatables/cographicandpower/powerchecks/checkdirectcombat.asm"
	.include "datatables/cographicandpower/powerchecks/checkindirectcombat.asm"
	.include "datatables/cographicandpower/powerchecks/checksoldierclass.asm"
	.include "datatables/cographicandpower/powerchecks/checkaerialclass.asm"
	.include "datatables/cographicandpower/powerchecks/checkaerialclassornotwait.asm"

	.include "datatables/cographicandpower/powereffects/copnoeffect.asm"
	.include "datatables/cographicandpower/powereffects/cophealtwohp.asm"
	.include "datatables/cographicandpower/powereffects/cophealfivehp.asm"
	.include "datatables/cographicandpower/powereffects/copreanimateunit.asm"
	.include "datatables/cographicandpower/powereffects/copresupplyunit.asm"

	.include "datatables/cographicandpower/powertypes/powertypestandard.asm"
	.include "datatables/cographicandpower/powertypes/powertypepowerofmoney.asm"
	
	
;Blank Line
