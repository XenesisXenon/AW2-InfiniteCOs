;hookpowercharge.asm
;This adds to the power charging subroutine to allow stuff like Sasha's SCOp

.org 0x08041C32
PowerChargeSystem:
;08041C32 480A     
ldr	r0,=#0x30040D8
ldr     r0,[r0]
ldrb    r1,[r0]
ldr     r0,[sp,#0x4]
bl      #0x8042C9C
mov     r5,r0
ldr     r1,[r6]
mov     r2,#0x8
ldsh    r0,[r1,r2]
cmp     r0,#0x0
beq     PowerChargeSystemOne;#0x8041C60

;08041C4A 3801     
sub     r0,#0x1
mov     r1,#0xA
bl      #0x808AAAC
sub     r1,r4,1
sub     r1,r1,r0
mov     r6,r1
mul     r6,r5
b       PowerChargeSystemTwo;#0x8041C64
.pool
;08041C5C 40D8     lsr     r0,r3
;08041C5E 0300     lsl     r0,r0,#0xC

PowerChargeSystemOne:
;08041C60 1C26     
mov     r6,r4
mul     r6,r5
PowerChargeSystemTwo:
;08041C64 7939     
ldrb    r1,[r7,#0x4]
mov     r0,#0x7F
and     r0,r1
cmp     r0,#0x0
beq     PowerChargeSystemThree;#0x8041C7E

;08041C6E 0648     
lsl     r0,r1,#0x19
lsr     r0,r0,#0x19
sub     r0,#0x1
mov     r1,#0xA
bl      #0x808AAAC
add     r4,r0,1
b       PowerChargeSystemFour;#0x8041C80

PowerChargeSystemThree:
;08041C7E 2400     
mov     r4,#0x0
PowerChargeSystemFour:
;08041C80 7839     
ldrb    r1,[r7]
ldr     r0,[sp,#0x8]
bl      #0x8042C9C
mov     r5,r0
mov     r0,r8
ldr     r1,[r0]
mov     r2,#0x8
ldsh    r0,[r1,r2]
cmp     r0,#0x0
beq     PowerChargeSystemFive;#0x8041CA8

sub     r0,#0x1
mov     r1,#0xA
bl      #0x808AAAC
sub     r1,r4,1
sub     r1,r1,r0
mov     r4,r1
mul     r4,r5
b       PowerChargeSystemSix;#0x8041CAA

PowerChargeSystemFive:
;08041CA8 436C     
mul     r4,r5
PowerChargeSystemSix:
;08041CAA 1C20     
mov     r0,r4
mov     r1,#0x2
bl      #0x808AAAC
mov     r1,r0
add     r1,r6,r1
ldr     r0,[sp,#0x4]
bl      #0x80440E0
mov     r0,r6
mov     r1,#0x2
bl      #0x808AAAC
mov     r1,r0
add     r1,r4,r1
ldr     r0,[sp,#0x8]
bl      #0x80440E0
mov     r1,r9
ldr     r0,[r1]
ldrb    r2,[r0,#0x9]
cmp     r2,#0x3
bne     #0x8041CF4
ldr     r0,=#0x30033EC
ldrh    r1,[r0]
mov     r2,r10
ldr     r0,[r2]
ldr     r2,[r0]
lsl     r0,r1,#0x4
sub     r0,r0,r1
lsl     r0,r0,#0x2
add     r0,r0,r2
ldrb    r0,[r0,#0x1B]
mov     r2,#0x0
cmp     r0,#0x1
bne     PowerChargeSystemSeven;#0x8041CF4

mov     r2,#0x2
PowerChargeSystemSeven:
;08041CF4 2A00     
cmp     r2,#0x0
beq     PowerChargeSystemEight;#0x8041D18

bl      #0x802DCA4
ldr     r0,=#0x849FEF8
mov     r1,#0x3
bl      #0x801C8F4
add     r0,#0x64
mov     r3,r13
ldrh    r3,[r3]
strh    r3,[r0]
b       PowerChargeSystemNine;#0x8041D2C
.pool
;08041D0E 0000     lsl     r0,r0,#0x0
;08041D10 33EC     add     r3,#0xEC
;08041D12 0300     lsl     r0,r0,#0xC
;08041D14 FEF80849 ????
;08041D16 0849     lsr     r1,r1,#0x1
PowerChargeSystemEight:
;08041D18 F7EBFFC4 
bl      #0x802DCA4
ldr     r0,=#0x849FFB0
mov     r1,#0x3
bl      #0x801C8F4
add     r0,#0x64
mov     r1,r13
ldrh    r1,[r1]
strh    r1,[r0]
PowerChargeSystemNine:
;08041D2C B003     
add     sp,#0xC
pop     {r3-r5}
mov     r8,r3
mov     r9,r4
mov     r10,r5
pop     {r4-r7}
pop     {r0}
bx      r0
.pool
;Blank Line
