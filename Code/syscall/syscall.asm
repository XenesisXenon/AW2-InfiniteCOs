;Various syscalls

SysCall_BgAffineSet:	;0x0808AAA0
	swi	0xE
	bx	r14
SysCall_CPUFastSet:	;0x0808AAA4
	swi	0xC
	bx	r14
SysCall_CPUSet:		;0x0808AAA8
	swi	0xB
	bx	r14
SysCall_Div:		;0x0808AAAC
	swi	0x6
	bx	r14
SysCall_DivRemainder:	;0x0808AAB0
	swi	0x6
	mov	r0,r1
	bx	r14
	
	.align 4
SysCall_HuffUnComp:	;0x0808AAB8
	swi	0x13
	bx	r14
SysCall_LZ77UncompVRam:	;0x0808AABC
	swi	0x12
	bx	r14
SysCall_LZ77UncompWRam:	;0x0808AAC0
	swi	0x11
	bx	r14
SysCall_Multiboot:	;0x0808AAC4
	mov	r1,0x1
	swi	0x25
	bx	r14
	
	.align	4
SysCall_RLUncompVRam:	;0x0808AACC
	swi	0x15
	bx	r14
SysCall_RLUncompWRam:	;0x0808AAD0
	swi	0x14
	bx	r14
SysCall_SoftReset:	;0x0808AAD4
	ldr	r3,=0x04000208
	mov	r2,0
	strb	r2,[r3]
	ldr	r1,=0x3007F00
	mov	r13,r1
	swi	0x1
	swi	0x0
	.pool
	
SysCall_VBlankIntrWait:	;0x0808AAEC
	mov	r2,0x0
	swi	0x5
	bx	r14
	