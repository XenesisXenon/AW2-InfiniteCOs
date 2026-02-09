;hook_campaign_special.asm
;This is a list of the various extra scripts run by campaign things
;These are used for checks

.relativeinclude on
	.include "cmpspec_victorydefeat.asm"
	.include "cmpspec_bcoptersdamaged_p1.asm"
	.include "cmpspec_capturehq.asm"
	.include "cmpspec_copgaugefill_p1.asm"
	.include "cmpspec_copready_p1.asm"
;	.include "cmpspec_copowerdisable.asm"
;	.include "cmpspec_inventionalive_blackcannon.asm"
;	.include "cmpspec_inventionalive_deathray.asm"
;	.include "cmpspec_inventionalive_minicannon.asm"
;	.include "cmpspec_pipeseamalive.asm"
;	.include "cmpspec_unitsdamaged_p1.asm"
;	.include "cmpspec_unitshavefuel_p1.asm"
.relativeinclude off

;blank line