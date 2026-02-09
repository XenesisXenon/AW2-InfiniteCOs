;HookMapsHeader.asm
;Locations that read the map header

;0x03003FC2 Reads/Writes. Convert from byte to halfword
.org 0x08016DD2
	ldrh	r0,[r0,0x2]
.org 0x08016D66
	ldrh	r0,[r6,0x2]
.org 0x08017014
	ldrh	r0,[r4,0x2]
.org 0x08017020
	ldrh	r0,[r4,0x2]
.org 0x08017334
	ldrh	r0,[r6,0x2]
.org 0x08017342
	ldrh	r0,[r6,0x2]
.org 0x08017356
	ldrh	r0,[r6,0x2]
.org 0x08017364
	ldrh	r0,[r6,0x2]
.org 0x080173DE
	ldrh	r0,[r0,0x2]
.org 0x080196D2
	ldrh	r3,[r0,0x2]
.org 0x08021820
	ldrh	r0,[r3,0x2]
.org 0x0802185C
	ldrh	r0,[r3,0x2]
.org 0x0802498C
	ldrh	r1,[r0,0x2]
.org 0x0802629E
	ldrh	r0,[r0,0x2]
.org 0x080263B4
	ldrh	r0,[r6,0x2]
.org 0x08026CEC
	ldrh	r0,[r1,0x2]
.org 0x08026D12
	ldrh	r0,[r1,0x2]
.org 0x0802C664
	ldrh	r1,[r0,0x2]	
.org 0x0802C800
	ldrh	r2,[r0,0x2]
.org 0x0803473A
	ldrh	r0,[r3,0x2]
.org 0x08034764
	ldrh	r1,[r3,0x2]
.org 0x08034854
	strh	r5,[r4,0x2]
.org 0x08034898
	ldrh	r0,[r0,0x2]
.org 0x08034CD8
	ldrh	r0,[r0,0x2]
.org 0x080365D8
	ldrh	r1,[r0,0x2]
.org 0x08037FF2
	ldrh	r1,[r0,0x2]
.org 0x08038018
	ldrh	r5,[r4,0x2]
.org 0x08038330
	ldrh	r0,[r4,0x2]
.org 0x08038494
	ldrh	r4,[r5,0x2]
.org 0x080384B6
	ldrh	r0,[r5,0x2]
.org 0x080384C0
	ldrh	r0,[r5,0x2]
.org 0x080384CA
	ldrh	r0,[r5,0x2]
.org 0x080384EC
	ldrh	r0,[r0,0x2]
.org 0x0803BCD2
	strh	r0,[r1,0x2]
.org 0x0803BD1C
	ldrh	r1,[r4,0x2]
.org 0x0803BD34
	ldrh	r0,[r4,0x2]
.org 0x0803C150
	ldrh	r0,[r1,0x2]
.org 0x0803C18C
	ldrh	r1,[r1,0x2]
.org 0x0803C1AE
	ldrh	r0,[r0,0x2]
.org 0x0803E3E6
	ldrh	r1,[r0,0x2]
.org 0x0803FD88
	ldrh	r2,[r0,0x2]
.org 0x08043634
	ldrh	r1,[r3,0x2]
.org 0x08058852
	ldrh	r0,[r0,0x2]
.org 0x08074588
	ldrh	r0,[r0,0x2]
.org 0x08077FB8
	strh	r0,[r2,0x2]
.org 0x08078E16
	ldrh	r0,[r0,0x2]
.org 0x08078E72
	ldrh	r1,[r0,0x2]
.org 0x0807B8CA
	ldrh	r1,[r0,0x2]
.org 0x0807BACC
	ldrh	r0,[r0,0x2]
.org 0x0807C5E2
	ldrh	r0,[r5,0x2]
.org 0x0807C59E
	ldrh	r2,[r5,0x2]
;.org 0x0808B6FA
;	ldrh	r0,[r1]
;	strh	r0,[r3]



;Map Header Pointer Locations (0x085C77A0)
.org 0x080196EC
	.dw	MapHeaderTable
.org 0x080206E0
	.dw	MapHeaderTable
.org 0x08024814
	.dw	MapHeaderTable
.org 0x0802492C
	.dw	MapHeaderTable
.org 0x08024970
	.dw	MapHeaderTable
.org 0x080249B8
	.dw	MapHeaderTable
.org 0x080263E8
	.dw	MapHeaderTable
.org 0x08026AE4
	.dw	MapHeaderTable
.org 0x08026D38
	.dw	MapHeaderTable
.org 0x0802C678
	.dw	MapHeaderTable
.org 0x0802C7D4
	.dw	MapHeaderTable
.org 0x0802C814
	.dw	MapHeaderTable
.org 0x0803477C
	.dw	MapHeaderTable
.org 0x0803500C
	.dw	MapHeaderTable
.org 0x080374D4
	.dw	MapHeaderTable
.org 0x0803BD4C
	.dw	MapHeaderTable
.org 0x0803E404
	.dw	MapHeaderTable
.org 0x0803FDCC
	.dw	MapHeaderTable
.org 0x08043650
	.dw	MapHeaderTable
.org 0x080617E0
	.dw	MapHeaderTable
.org 0x0806ADC4
	.dw	MapHeaderTable
.org 0x0806AF64
	.dw	MapHeaderTable
.org 0x080773A8
	.dw	MapHeaderTable
.org 0x08077558
	.dw	MapHeaderTable
.org 0x08078E8C
	.dw	MapHeaderTable
.org 0x0807B900
	.dw	MapHeaderTable
.org 0x0807BA5C
	.dw	MapHeaderTable
.org 0x0807C5C4
	.dw	MapHeaderTable
.org 0x0807F6D4
	.dw	MapHeaderTable
.org 0x08090A6C
	.dw	MapHeaderTable
.org 0x08090D68
	.dw	MapHeaderTable
.org 0x08090EC0
	.dw	MapHeaderTable
	
;Slightly Offset Map Headers
.org 0x0803C1D0	;0x0805C77E0
	.dw	MapHeaderTable+0x40
.org 0x08034750 ;0x0805C77E0
	.dw	MapHeaderTable+0x40
;.org 0x08046600 ;0x0805C77DC
;	.dw	MapHeaderTable+0x3C
.org 0x08077B68 ;0x0805C77E0
	.dw	MapHeaderTable+0x40
.org 0x08087C04 ;0x0805C77DC
	.dw	MapHeaderTable+0x3C

;Map Header Loading Code/Menu Code
.org 0x080374AA
	;Upper Limit of Maps per case
	cmp	r5,0x31 ;Default 0x31/49

.org 0x080374AE
	;Upper Map ID Limit
	ldr	r0,=CoreHalfwordMapCountLoop+1
	bx	r0
	.pool
;	add	r4,1
;	nop
;	nop
;	cmp	r4,MapHeaderMaximum

;Vs Menu Control Stuff
	MapCaseTotalTempOffset equ	0x77
;Handling Halfword menu in the 0x02027F78 map list
;Store IDs
.org 0x0803749E
	mov	r1,r5
	add	r0,r1,1
	lsl	r1,r1,0x1
	mov	r5,r0
	add	r1,r8
	strh	r4,[r1]
	
;Load IDs
.org	0x08086B3C
;Map Names in the List, Maps Displayed
	mov	r1,MapCaseTotalTempOffset
	ldrb	r1,[r0,r1]
	cmp	r1,r7
	bge	@VsMenuHalfWordIdsOne
	add	r7,r1,1
@VsMenuHalfWordIdsOne:	
	cmp	r7,0x0
	ble	0x08086BDE
	mov	r1,0x0
	mov	r8,r1
	add	r0,0x4
	mov	r3,r10
	lsl	r3,r3,0x1
	add	r4,r3,r0
	mov	r6,r7
	ldrh	r0,[r4]
.org 0x08086B68
	ldrh	r0,[r4]
.org 0x08086BB0
	ldrh	r0,[r4]
.org 0x08086BD6
	add	r4,2
.org 0x08086EB2
	lsl	r5,r0,0x1
.org 0x08086EBE
	ldrh	r0,[r4]
.org 0x08086DA6
	ldrh	r0,[r0]
.org 0x08087110
	ldrh	r0,[r1]
;.org 0x08086C50
;	ldrh	r0,[r4]
.org 0x08086C60
	ldrh	r0,[r4]
.org 0x08086CA4
	ldrh	r0,[r4]
.org 0x08086CCA
	add	r4,2

;.org 0x08086D10
;	ldrh	r0,[r5]
.org 0x08086D20
	ldrh	r0,[r5]
.org 0x08086D5C
	ldrh	r0,[r5]
.org 0x08086D80
	add	r5,2

.org 0x0849ECDC
	.dw	0x2027FEC ;Was 0x02027FAC
.org 0x080374C0
	add	r2,MapCaseTotalTempOffset-1
.org 0x08086126
	add	r0,MapCaseTotalTempOffset-1
	
.org 0x080374C8
	add	r0,MapCaseTotalTempOffset
.org 0x08086600
	add	r0,MapCaseTotalTempOffset
.org 0x080871CE
	add	r0,MapCaseTotalTempOffset
.org 0x08087404
	add	r5,MapCaseTotalTempOffset
.org 0x08087476
	add	r0,MapCaseTotalTempOffset
.org 0x08086CF2
	add	r0,MapCaseTotalTempOffset
.org 0x08086212
	add	r4,MapCaseTotalTempOffset
.org 0x080864FC
	add	r0,MapCaseTotalTempOffset
	
;For the War Room
.org 0x0808718A
	add	r0,MapCaseTotalTempOffset
.org 0x080872F8
	add	r5,MapCaseTotalTempOffset
.org 0x08087362
	add	r0,MapCaseTotalTempOffset
	
.org 0x08086C30
	mov	r1,MapCaseTotalTempOffset	
	ldrb	r1,[r0,r1]
	mov	r9,r4
	cmp	r1,r5
	bge	VsMenuHalfWordIdsTwo
	add	r5,r1,1
VsMenuHalfWordIdsTwo:	
	cmp	r5,0x2
	ble	VsMenuHalfWordIdsThree
	mov	r5,2
VsMenuHalfWordIdsThree:	
	cmp	r5,0x0
	ble	0x08086CD2
	mov	r7,0x0
	add	r0,4
	lsl	r4,r6,0x1
	add	r4,r4,r0
	mov	r6,r5
	ldrh	r0,[r4]
	
.org 0x08086CF0
	mov	r0,MapCaseTotalTempOffset
	ldrb	r0,[r5,r0]
	cmp	r0,r4
	bge	VsMenuHalfWordIdsFour;0x08086CFC
	add	r4,r0,1
VsMenuHalfWordIdsFour:	
	bl	0x08013AEC
	cmp	r4,0x2
	ble	0x08086D88
	cmp	r4,0x2
	ble	0x08086D88
	mov	r7,0x4
	lsl	r6,r6,0x1
	add	r0,r5,r6
	mov	r5,8
	add	r5,r0,r5
	sub	r6,r4,2
VsMenuHalfWordIdsFive:	
	ldrh	r0,[r5]
	bl	0x0803CB24

.org 0x08086D86
	bne	VsMenuHalfWordIdsFive;0x08086D10	
	
.org 0x0808634E
	lsl	r0,r0,0x1
	ldrh	r0,[r1,r0]
.org 0x08086394
	lsl	r0,r0,0x1
	ldrh	r0,[r1,r0]	
	
;In-Map Case Scrolls
.org 0x08086B6A
	cmp	r0,0xB3
	nop
;Load the Design Maps Image or the Map Data	
.org 0x08086EC0
	cmp	r0,0xB3
	bhi	MapHeaderDesignMapDisplayOverCheck;0x08068EFE
	
;Second hook for TileAlloc
.org 0x08086EB8
	ldr	r0,=MapHeader_Display_TileAlloc+1
	bx	r0
	.pool

.org 0x08086EFE	
MapHeaderDesignMapDisplayOverCheck:
	ldr	r0,=CoreMapHeaderDesignMapDisplayExpansion+1
	bx	r0
.org 0x08086F34
	.pool
	
.org 0x08086F46
;First Load Map, B Button Press
	lsl	r4,r4,0x1
	add	r4,r0,r4
	ldrh	r0,[r4]

.org 0x08086FA4
	.dw	0x02027F78

.org 0x08086F4E
;Load the Design Maps Image or the Map Data
;First Render Only
.org 0x08086F44
;Second hook for tilealloc
	ldr	r0,=MapHeader_FirstDisplay_TileAlloc+1
	bx	r0
	.pool

.org 0x08086FC6
	ldr	r0,=MapHeaderDesignMapFirstDisplayOverCheck+1
	bx	r0
.org 0x08087028
	.pool
.org 0x08086F5A
	ldrh	r0,[r4]

.org 0x0808710E
	lsl	r1,r1,0x1
	ldrh	r0,[r0,r1]
	
.org 0x08087112
;Controls the property count display
.org 0x08087144
	cmp	r0,0xBF
	bgt	0x08087116	;Jumps back to the count if it's a normal map
	mov	r1,r4		;Condensed blanking code for DMs
	add	r1,100
	mov	r0,0x1
	neg	r0,r0
	str	r0,[r1]
	str	r0,[r1,0x4]
	b	0x0808715C
	
;Forces a Text Buffer Clear when scrolling up/down
;Prevents garbling/corruption of graphics
.org 0x08086A58
	push	{r4-r7,r14}
	ldr	r7,=CoreVsModeMenuTextScroll+1
	bx	r7
	.pool


;0x0803CA54: Unlocked Map Status
.org 0x0803CA66
	mov	r0,0x1	;Force Map Unlock Status
	
;0x0803CA9C: Unlocked Map Case Status
.org 0x0803CAAE
	mov	r0,0x1	;Force Map Case Unlock Status
	
;Map Has Been Played
;Force the result if it's above a certain ID.
.org 0x0803CB24
	ldr	r1,=CoreMapsPlayedExpansion+1
	bx	r1
	.pool

;Force Ignore if the Map ID is greater than original maps
.org 0x0803CA28
	push	{r4,r14}
	ldr	r2,=CoreMapsPlayedSaveExpansion+1
	bx	r2
	.pool
	
;Widen the Menu Box to allow for larger names
;Shift all the OAM elements to the right appropriately
;Box Sizes
.org 0x08085D74
	mov	r2,0xF	;Was 0xC
.org 0x08085D84
	mov	r2,0xF	;Was 0xC
.org 0x08085D96
	mov	r2,0x10 ;Was 0xD
	
;Hard Toggle
.org 0x08086B1E
	ldr	r1,=Core_MapCaseHardToggleName+1
	bx	r1
	.pool
	
;Arrow/Position OAM Placement	
.org 0x08087462
	mov	r1,0x60
.org 0x080874F0
	mov	r1,0x60
.org 0x080871C2
	mov	r1,0x30
.org 0x080871E8
	mov	r1,0x30
.org 0x08087206
	mov	r1,0x60

;LCD System Window X Size
.org 0x08087820
	ldr	r3,=CoreVsMenuWindowSizeSet+1
	bx	r3
	.pool
	
.org 0x08087226
;X-Pos of Highlight Bar
	mov	r1,0x3 ;Was 0xFF
	
;Halfword Support for War Room Menu as well
.org 0x080878B6
	lsl	r0,r0,0x1
	ldrh	r0,[r1,r0]
	
.org 0x08087B80
	lsl	r6,r5,0x1
	add	r6,r6,r0
	ldrh	r0,[r6]
.org 0x08087BAA
	ldrh	r1,[r6]
.org 0x08087BCE
	ldrh	r0,[r6]
.org 0x08087BFC
	.dw	0x02027F78
	
.org 0x08086A7C
	mov	r1,0x0
	mov	r8,r1
	mov	r3,r10
	lsl	r3,0x1
	add	r4,r3,r0
	mov	r6,r7
	ldrh	r0,[r4]
.org 0x08086A98
	ldrh	r0,[r4]
.org 0x08086AD8
	ldrh	r0,[r4]
.org 0x08086AFE
	add	r4,0x2
.org 0x08086ACC
	.dw	0x02027F78
	
.org 0x08087560
	lsl	r4,r3,0x1
	add	r4,r4,r0
	ldrh	r0,[r4]
.org 0x0808758A
	add	r4,0x2
.org 0x080875A0
	.dw	0x02027F78
	
.org 0x08087C2A
WarRoomGUIHook:
	ldr	r6,=CoreWarRoomScoreFix+1
	bx	r6
	.pool

.org 0x08087C60
	ble	WarRoomGUIHook
	
.org 0x08087A60
	ldr	r1,[sp,0x4]
	lsl	r1,r1,0x1
	add	r0,r1,r0
	ldrh	r1,[r0]
.org 0x08087A98
	ldrh	r1,[r4]
.org 0x08087A92
	ldr	r1,[sp,0x4]
	lsl	r1,r1,0x1
	add	r4,r1,r0
	ldrh	r1,[r4]
.org 0x08087ABC
	ldrh	r1,[r4]
.org 0x08087B1C
	.dw	0x02027F78

;Code to fix the scrollbar marker from disappearing if there's more than ~30 maps
.org 0x08087438
	ldr	r1,=MapSelect_ScrollbarMinimumFix+1
	bx	r1
	.pool
	

	
