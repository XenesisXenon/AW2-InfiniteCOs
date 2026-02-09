;coreversusmenu.asm
;Features:
;1 = Co Select (1 pp evens)
;2 = CPU/Human Toggle (1 pp odds)
;3 = Army Colour Toggle (1 pp > currentplayers)
;4 = Force Rank Toggle (4 pp > currentplayers)

SetupVersus_COChooser_Index_Max equ 7

.relativeinclude on
.include "setupmenu_cochooserindex.asm"
.include "setupmenu_menutoggle.asm"
.include "setupmenu_arrowoam.asm"
.include "setupmenu_forcerankoam.asm"
.include "setupmenu_cochoosertext.asm"
.include "setupmenu_forcerankbox.asm"
.include "setupmenu_armyemblemfix.asm"
.include "setupmenu_initialobjsetup.asm"
.include "setupmenu_selectablecopool.asm"
.include "icon_expansion.asm"
.relativeinclude off

SetupVersus_COChooser_AButtonFix:
	add	r1,0x26
	mov	r0,0x1
	strb	r0,[r1]
	ldr	r0,[r5]
	add	r0,0x31
	strb	r4,[r0]
	ldr	r2,[r5]
	add	r2,0x32
	mov	r0,0x0
	ldsb	r0,[r2,r0]
	lsr	r1,r0,0x1F
	add	r0,r0,r1
	;asr	r0,r0,0x1
	;Check if we've gone over
	mov	r1,r2
	sub	r1,0x32
	ldrb	r1,[r1,0x8]
	lsl	r1,r1,0x1
	cmp	r0,r1
	bge	@SetupVersus_COChooser_AButtonFix_IndexReset
	asr	r0,r0,0x1
	b	@SetupVersus_COChooser_AButtonFix_End
@SetupVersus_COChooser_AButtonFix_IndexReset:
	mov	r0,0 ;Resets index position
@SetupVersus_COChooser_AButtonFix_End:	
	strb	r0,[r2]
	ldr	r0,=0x08066054+1
	bx	r0
	
	
