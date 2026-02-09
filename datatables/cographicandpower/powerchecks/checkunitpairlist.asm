;checkunitpairlist.asm

COP_CheckPairList:
    ldr r1,=@UnitList
    add r1,r0,r1
    ldrb r0,[r1]
    cmp r0,0x1
    beq @Check_True
    mov r0,0x0
    b   @Check_End
@Check_True:
    mov r0,0x1
@Check_End:
    bx r14

@UnitList:
    .db 0;Unit_None		equ 0x0
    .db 0;Unit_Infantry		equ 0x1
    .db 0;Unit_Mech		equ 0x2
    .db 1;Unit_MidTank		equ 0x3
    .db 1;Unit_Tank		equ 0x5
    .db 0;Unit_Recon		equ 0x6
    .db 0;Unit_APC		equ 0x7
    .db 0;Unit_Neotank		equ 0x8
    .db 1;Unit_Artillery		equ 0xA
    .db 1;Unit_Rockets		equ 0xB
    .db 0;Unit_AntiAir		equ 0xE
    .db 0;Unit_Missiles		equ 0xF
    .db 1;Unit_Fighter		equ 0x10
    .db 1;Unit_Bomber		equ 0x11
    .db 0;Unit_BattleCopter	equ 0x13
    .db 0;Unit_TransportCopter	equ 0x14
    .db 0;Unit_Battleship		equ 0x15
    .db 1;Unit_Cruiser		equ 0x16
    .db 0;Unit_Lander		equ 0x17
    .db 1;Unit_Sub		equ 0x18
