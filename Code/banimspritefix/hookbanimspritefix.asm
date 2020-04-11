;hookbanimspritefix.asm
;Expands the Battle Animation Sprite Tables so that they
;pick the correct army by repointing it.

.org 0x0804C564
	.dw	BattleAnimationSpriteTable
.org 0x0804CFE4
	.dw	BattleAnimationSpriteTable
.org 0x0804D0E8
	.dw	BattleAnimationSpriteTable
.org 0x0804DC48
	.dw	BattleAnimationSpriteTable
.org 0x0804FFD8
	.dw	BattleAnimationSpriteTable
.org 0x08050DF4
	.dw	BattleAnimationSpriteTable
.org 0x08050EB4
	.dw	BattleAnimationSpriteTable
.org 0x08056B14
	.dw	BattleAnimationSpriteTable
;Blank Line
