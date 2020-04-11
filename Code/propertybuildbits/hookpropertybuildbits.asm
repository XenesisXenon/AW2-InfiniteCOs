;This is a fix for the AI to use Hachi SCOP
.org 0x08042450
	ldr	r0,=PropertyBuildBits_AICheck+1
	bx	r0
	.pool

.org 0x0802430E
	ldr	r0,=PropertyBuildBits_HumanCheck+1
	bx	r0
	.pool