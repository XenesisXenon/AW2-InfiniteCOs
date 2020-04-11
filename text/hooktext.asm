;Text Pointer Manager - Advance Wars Project
;hooktext.asm

.org 0x08004D88
	.word TextTable
.org 0x08005270
	.word TextTable
.org 0x080052BC
	.word TextTable
.org 0x08005340
	.word TextTable
.org 0x0800538C
	.word TextTable
.org 0x08005410
	.word TextTable
.org 0x0800545C
	.word TextTable
.org 0x0801481C
	.word TextTable
.org 0x08014AEC
	.word TextTable
.org 0x08018650
	.word TextTable
.org 0x08018714
	.word TextTable
.org 0x08019F28
	.word TextTable
.org 0x0801A0FC
	.word TextTable
.org 0x0802496C
	.word TextTable
.org 0x0802D90C
	.word TextTable
.org 0x08034AF0
	.word TextTable
.org 0x08039F4C
	.word TextTable
.org 0x0803A60C
	.word TextTable
.org 0x0803A654
	.word TextTable
.org 0x080469DC
	.word TextTable
.org 0x08047EAC
	.word TextTable
.org 0x0804884C
	.word TextTable
.org 0x08068768
	.word TextTable
.org 0x080688A0
	.word TextTable
.org 0x0807605C
	.word TextTable
.org 0x0807FACC
	.word TextTable
;This is called in hook_splashmod.asm
.org 0x0808069C
	.word TextTable
.org 0x080853A8
	.word TextTable
	
.org 0x08086C94
	.word MapCaseNameTable
.org 0x08086B9C
	.word MapCaseNameTable

;Just for Fun
.org	0x085802B4
	;.ascii "OPTION*SHOP",0x0
;Blank Line	
