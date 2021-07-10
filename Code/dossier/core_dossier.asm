;core_dossier.asm

.relativeinclude on
	.align 4
	.include "core_dossiertextfix.asm"
	.include "core_dossierpage.asm"
	.include "core_costat_oam.asm"
	.include "core_coinfobox_move.asm"
	.include "core_defdisplay.asm"
.relativeinclude off
