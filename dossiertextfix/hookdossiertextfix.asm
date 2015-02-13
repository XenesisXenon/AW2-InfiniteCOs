;hookdossiertextfix.asm
;Forces the CO Dossier Code to use the CO Data

.org 0x080852D2
	ldr	r3,=CoreDossierTextFix+1
	bx	r3
	.pool	

.org 0x080852E6
DossierTextFixReturn:

;Blank Line
