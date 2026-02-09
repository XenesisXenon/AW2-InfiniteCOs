;hookinventiondamagefix.asm
;Decouples the damage done to a Md Tank from a damage done to an Invention
;Uses the padding space in the Unit Data.

.org 0x08025226	;Primary Weapon
	mov	r3,0x34;mov	r1,0x3

.org 0x08025242 ;Secondary Weapon
	mov	r1,0x1B;mov	r1,0x3
	
;blank line
