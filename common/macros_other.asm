;macros_other.asm
;Generic Macros used for other things

	.macro Calculate_PlayerfromUnitPointer
	;Output in r0, Unit pointer input r0
		mov	r1,r0
		ldr	r0,=BaseUnitMemory
		ldr	r0,[r0]
		sub	r1,r1,r0
		lsl	r0,r1,0x2
		add	r0,r0,r1
		lsl	r1,r0,0x4
		add	r0,r0,r1
		lsl	r1,r0,0x8
		add	r0,r0,r1
		lsl	r1,r0,0x10
		add	r0,r0,r1
		neg	r0,r0
		asr	r0,r0,0x8
	.endmacro
