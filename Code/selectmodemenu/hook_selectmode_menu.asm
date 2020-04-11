;hook_selectmode_menu.asm

;Very silly randomiser
.org 0x0808124A
	ldr	r0,=SelectMode_CORandomiser+1
	bx	r0
	.pool
