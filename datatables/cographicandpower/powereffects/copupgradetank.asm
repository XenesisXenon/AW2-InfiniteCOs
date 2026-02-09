;copeffectupgradetanks.asm
;Upgrades a Tank one Tech Level

COPEffectUpgradeTanks:
	ldrb	r2,[r0]
	cmp	r2,0x5
	bne	COPEffectUpgradeTanksNotTank
	mov	r2,0x3
	b	COPEffectUpgradeTanksUpgrade
COPEffectUpgradeTanksNotTank:	
	cmp	r2,0x3
	bne	COPEffectUpgradeTanksNotMedTank
	mov	r2,0x8	
	b	COPEffectUpgradeTanksUpgrade
COPEffectUpgradeTanksNotMedTank:
	cmp	r2,0xA
	bne	COPEffectUpgradeTanksNotArtillery
	mov	r2,0x4
	b	COPEffectUpgradeTanksUpgrade
	
COPEffectUpgradeTanksNotArtillery:
	cmp	r2,0x13
	bne	COPEffectUpgradeTanksNotBattlecopter
	mov	r2,0x11
	b	COPEffectUpgradeTanksUpgrade

COPEffectUpgradeTanksNotBattlecopter:
	cmp	r2,0x09
	bne	COPEffectUpgradeTanksNotDestroyer
	mov	r2,0x15
	b	COPEffectUpgradeTanksUpgrade

	
COPEffectUpgradeTanksNotDestroyer:	
	cmp	r2,0x4
	bne	COPEffectUpgradeTanksNotUpgradable
	mov	r2,0xB	
	b	COPEffectUpgradeTanksUpgrade	
COPEffectUpgradeTanksUpgrade:
	strb	r2,[r0]	
COPEffectUpgradeTanksNotUpgradable:	
	bx	r14
;Blank Line	
