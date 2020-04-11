;core_gamemapinit.asm

	.align 4
InitialisePlayerRamFunction_Expansion:
	bl	InitialiseGameRulesRAM_ForceRankExpansion
	bl	InitialiseGameRulesRAM_GameTileAlloc
	bl	InitialiseGameRulesRAM_TurnTimer
	bl	InitialiseGameRulesRAM_ChargeStyle
	bl	InitialiseGameRulesRAM_CampaignEnemyForce
	bl	InitialiseGameRulesRAM_WeatherStyle
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool	

.relativeinclude on
	.include	"initram_forcerank.asm"
	.include	"initram_tilealloc.asm"
	.include	"initram_turntimer.asm"
	.include	"initram_chargestyle.asm"
	.include	"initram_campaignforce.asm"
	.include	"initram_weatherstyle.asm"
.relativeinclude off


;blank line	