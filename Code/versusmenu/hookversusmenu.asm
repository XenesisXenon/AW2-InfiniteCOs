;hookversusmenu.asm
;Hooks for the Versus Setup Menus to add more functions

.org 0x08065EB4
	push	{r14}
	ldr	r0,=SetupVersus_COChooser_Expansion+1
	bx	r0
	.pool
	
.org 0x08065F88
	;push	{r4,r5,r14}
	ldr	r0,=SetupVersus_COChooser_MaxPosition+1
	bx	r0
	.pool
	
.org 0x08066C38
	;Rules Menu
	cmp	r4,0x6	;Max value to the right for rules

.org 0x08065EF4
	ldr	r0,=SetupVersus_COChooser_ArrowOAM+1
	bx	r0
	.pool
	
.org 0x08065F9E
	ldr	r0,=SetupVersus_COChooser_ForceHook+1
	bx	r0
	.pool

.org 0x08066F70
	ldr	r0,=SetupVersus_COChooser_TextIDFix+1
	bx	r0
	.pool
	
.org 0x08066038
	ldr	r0,=SetupVersus_COChooser_AButtonFix+1
	bx	r0
	.pool
	
.org 0x08065AA4
	ldr	r5,=SetupVersus_OBJLoader_ArmyEmblemFix+1
	bx	r5
	.pool
	
.org 0x08065C22
	ldr	r0,=SetupVersus_OBJLoader_InitialOBJSetup+1
	bx	r0
	.pool
	
.org 0x0801f198
	.dw	GUI_Icon_PointerTable
.org 0x0801f480
	.dw	GUI_Icon_PointerTable

;Vs Menu Setup CO Pool
.org 0x08043CA0
	push	{r4-r7,r14}
	mov	r7,r9
	mov	r6,r8
	push	{r6,r7}
	
	ldr	r6,=SetupMenu_SelectableCOPool+1
	bx	r6
	.pool

;Change Rule Defaults
;Fog of War
.org 0x08065828	
	mov	r3,0x1
	
;Weather
.org 0x08065840
	strb	r3,[r0]
	
