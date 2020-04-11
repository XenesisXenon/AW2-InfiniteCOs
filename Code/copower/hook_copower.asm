;hook_copower.asm

.relativeinclude on
	.include	"./Hook_COP_Launch.asm"
.relativeinclude off

.org	0x08080E84
	;Disables a safety branch of the COP input to allow for other IDs
	;For the COP animation to be input
	nop