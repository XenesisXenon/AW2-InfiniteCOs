;hook_campaign_special.asm
;This is a list of the various extra scripts run by campaign things
;These are used for checks

.relativeinclude on
	.include "cmpspec_victorydefeat.asm"
	.include "cmpspec_BCoptersDamaged_p1.asm"
	.include "cmpspec_CaptureHQ.asm"
	.include "cmpspec_COPGaugefill_P1.asm"
	.include "cmpspec_COPReady_P1.asm"
;	.include "cmpspec_COPowerDisable.asm"
;	.include "cmpspec_inventionalive_blackcannon.asm"
;	.include "cmpspec_inventionalive_deathray.asm"
;	.include "cmpspec_inventionalive_minicannon.asm"
;	.include "cmpspec_pipeseamalive.asm"
;	.include "cmpspec_UnitsDamaged_P1.asm"
;	.include "cmpspec_UnitsHaveFuel_P1.asm"
.relativeinclude off

;blank line