;copeffecttransformunits.asm
;Transforms units back and forth

COPEffect_UnitTransformation:
    push   {r4,r14}
	mov    r4,r0
	ldrb   r0,[r4]
	ldr    r1,=@Unitpair_Table
	add    r1,r0,r1
	ldrb   r1,[r1]
	cmp    r0,r1
	beq    @End
	strb   r1,[r4]

	;mov    r1,0
	;bl     @Long_AmmoRestore

@End:
    pop {r4}
    pop {r0}
	bx	r0

@Long_AmmoRestore:
    LongBL  r3,0x08029978+1

@Unitpair_Table:    ;What unit (comment) should transform into a different unit (table entry). Self = no transformation
    .db Unit_None           ;Unit_None		equ 0x0
    .db Unit_Infantry       ;Unit_Infantry		equ 0x1
    .db Unit_Mech           ;Unit_Mech		equ 0x2
    .db Unit_Rockets        ;Unit_MidTank		equ 0x3
    .db 0x4
    .db Unit_Artillery      ;Unit_Tank		equ 0x5
    .db Unit_Recon          ;Unit_Recon		equ 0x6
    .db Unit_APC            ;Unit_APC		equ 0x7
    .db Unit_Neotank        ;Unit_Neotank		equ 0x8
    .db 0x9
    .db Unit_Tank           ;Unit_Artillery		equ 0xA
    .db Unit_MidTank        ;Unit_Rockets		equ 0xB
    .db 0xC
    .db 0xD
    .db Unit_AntiAir        ;Unit_AntiAir		equ 0xE
    .db Unit_Missiles       ;Unit_Missiles		equ 0xF
    .db Unit_Bomber         ;Unit_Fighter		equ 0x10
    .db Unit_Fighter            ;Unit_Bomber		equ 0x11
    .db 0x12
    .db Unit_BattleCopter       ;Unit_BattleCopter	equ 0x13
    .db Unit_TransportCopter    ;Unit_TransportCopter	equ 0x14
    .db Unit_Battleship     ;Unit_Battleship		equ 0x15
    .db Unit_Sub            ;Unit_Cruiser		equ 0x16
    .db Unit_Lander         ;Unit_Lander		equ 0x17
    .db Unit_Cruiser        ;Unit_Sub		equ 0x18
    .align

;Blank Line
