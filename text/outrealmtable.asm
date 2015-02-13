;outrealm text table additions
	;3316
	ScriptOutrealm 		equ 3316
	ScriptAWDSJugger 	equ ScriptOutrealm+14
	ScriptAWDSKindle 	equ ScriptAWDSJugger+14
	ScriptAWDSSasha 	equ ScriptAWDSKindle+14
	ScriptAWDSJake 		equ ScriptAWDSSasha+14
	ScriptAWDSKoal 		equ ScriptAWDSJake+14
	ScriptAWDSGrimm 	equ ScriptAWDSKoal+14
	ScriptAW1Sturm 		equ ScriptAWDSGrimm+14
	ScriptAW1SturmVs 	equ ScriptAW1Sturm+14
	ScriptAWDSJavier 	equ ScriptAW1SturmVs+14
	ScriptAW1Andy 		equ ScriptAWDSJavier+14	
	ScriptAW1Max 		equ ScriptAW1Andy+14	
	ScriptAW1Sami 		equ ScriptAW1Max+14	
	ScriptAW1Nell 		equ ScriptAW1Sami+14
	ScriptAW1Olaf 		equ ScriptAW1Nell+14
	ScriptAW1Grit 		equ ScriptAW1Olaf+14	
	ScriptAW1Kanbei 	equ ScriptAW1Grit+14	
	ScriptAW1Sonja 		equ ScriptAW1Kanbei+14	
	ScriptAW1Eagle 		equ ScriptAW1Sonja+14	
	ScriptAW1Drake 		equ ScriptAW1Eagle+14	
	ScriptSFWCaroline 	equ ScriptAW1Drake+14
	ScriptSFWYamamoto 	equ ScriptSFWCaroline+14
	ScriptSFWBillygates 	equ ScriptSFWYamamoto+14
	ScriptAWDSOlaf 		equ ScriptSFWBillygates+14
	ScriptAWDSNell 		equ ScriptAWDSOlaf+14
	ScriptAWDSRachel 	equ ScriptAWDSNell+14
	ScriptAWDSAndy 		equ ScriptAWDSRachel+14
	ScriptAWDSMax 		equ ScriptAWDSAndy+14
	ScriptAWDSSami 		equ ScriptAWDSMax+14
	ScriptAWDSGrit 		equ ScriptAWDSSami+14
	ScriptAWDSKanbei 	equ ScriptAWDSGrit+14
	ScriptAWDSSonja 	equ ScriptAWDSKanbei+14

	ScriptAWDSEagle 	equ ScriptAWDSSonja+14
	ScriptAWDSDrake 	equ ScriptAWDSEagle+14
	ScriptAWDSFlak	 	equ ScriptAWDSDrake+14
	ScriptAWDSLash	 	equ ScriptAWDSFlak+14
	ScriptAWDSAdder 	equ ScriptAWDSLash+14
	ScriptAWDSHawke 	equ ScriptAWDSAdder+14
	ScriptAWDSVonbolt 	equ ScriptAWDSHawke+14
	
	ScriptAWDSHachi 	equ ScriptAWDSVonbolt+14
	ScriptAWDSColin 	equ ScriptAWDSHachi+14
	ScriptAWDSJess	 	equ ScriptAWDSColin+14
	ScriptAWDSSensei 	equ ScriptAWDSJess+14
	
	ScriptCCOVenomAdder	equ ScriptAWDSSensei+14
	ScriptCCOEpoch		equ ScriptCCOVenomAdder+14
	ScriptCCOWalter		equ ScriptCCOEpoch+14	
	ScriptCCOZed		equ ScriptCCOWalter+14
	
	.word	OutrealmName
	.word	OutrealmCOPower
	.word	OutrealmSuperPower
	.word	OutrealmDesc1
	.word	OutrealmDesc2
	.word	OutrealmDesc3
	.word	OutrealmDesc4
	.word	OutrealmVictory
	.word	OutrealmCOPQuote1
	.word	OutrealmCOPQuote2
	.word	OutrealmCOPQuote3
	.word	OutrealmCOPQuote4
	.word	OutrealmCOPQuote5
	.word	OutrealmCOPQuote6
	
	.word	AWDSJuggerName
	.word	AWDSJuggerCOPower
	.word	AWDSJuggerSuperPower
	.word	AWDSJuggerDesc1
	.word	AWDSJuggerDesc2
	.word	AWDSJuggerDesc3
	.word	AWDSJuggerDesc4
	.word	AWDSJuggerVictory
	.word	AWDSJuggerCOPQuote1
	.word	AWDSJuggerCOPQuote2
	.word	AWDSJuggerCOPQuote3
	.word	AWDSJuggerCOPQuote4
	.word	AWDSJuggerCOPQuote5
	.word	AWDSJuggerCOPQuote6
	;3358
	.word	AWDSKindleName
	.word	AWDSKindleCOPower
	.word	AWDSKindleSuperPower
	.word	AWDSKindleDesc1
	.word	AWDSKindleDesc2
	.word	AWDSKindleDesc3
	.word	AWDSKindleDesc4
	.word	AWDSKindleVictory
	.word	AWDSKindleCOPQuote1
	.word	AWDSKindleCOPQuote2
	.word	AWDSKindleCOPQuote3
	.word	AWDSKindleCOPQuote4
	.word	AWDSKindleCOPQuote5
	.word	AWDSKindleCOPQuote6
	
	.word	AWDSSashaName
	.word	AWDSSashaCOPower
	.word	AWDSSashaSuperPower
	.word	AWDSSashaDesc1
	.word	AWDSSashaDesc2
	.word	AWDSSashaDesc3
	.word	AWDSSashaDesc4
	.word	AWDSSashaVictory
	.word	AWDSSashaCOPQuote1
	.word	AWDSSashaCOPQuote2
	.word	AWDSSashaCOPQuote3
	.word	AWDSSashaCOPQuote4
	.word	AWDSSashaCOPQuote5
	.word	AWDSSashaCOPQuote6
	
	.word	AWDSJakeName
	.word	AWDSJakeCOPower
	.word	AWDSJakeSuperPower
	.word	AWDSJakeDesc1
	.word	AWDSJakeDesc2
	.word	AWDSJakeDesc3
	.word	AWDSJakeDesc4
	.word	AWDSJakeVictory
	.word	AWDSJakeCOPQuote1
	.word	AWDSJakeCOPQuote2
	.word	AWDSJakeCOPQuote3
	.word	AWDSJakeCOPQuote4
	.word	AWDSJakeCOPQuote5
	.word	AWDSJakeCOPQuote6
	
	.word	AWDSKoalName
	.word	AWDSKoalCOPower
	.word	AWDSKoalSuperPower
	.word	AWDSKoalDesc1
	.word	AWDSKoalDesc2
	.word	AWDSKoalDesc3
	.word	AWDSKoalDesc4
	.word	AWDSKoalVictory
	.word	AWDSKoalCOPQuote1
	.word	AWDSKoalCOPQuote2
	.word	AWDSKoalCOPQuote3
	.word	AWDSKoalCOPQuote4
	.word	AWDSKoalCOPQuote5
	.word	AWDSKoalCOPQuote6
	
	.word	AWDSGrimmName
	.word	AWDSGrimmCOPower
	.word	AWDSGrimmSuperPower
	.word	AWDSGrimmDesc1
	.word	AWDSGrimmDesc2
	.word	AWDSGrimmDesc3
	.word	AWDSGrimmDesc4
	.word	AWDSGrimmVictory
	.word	AWDSGrimmCOPQuote1
	.word	AWDSGrimmCOPQuote2
	.word	AWDSGrimmCOPQuote3
	.word	AWDSGrimmCOPQuote4
	.word	AWDSGrimmCOPQuote5
	.word	AWDSGrimmCOPQuote6
	
	.word	AW1SturmName
	.word	AW1SturmCOPower
	.word	AW1SturmSuperPower
	.word	AW1SturmDesc1
	.word	AW1SturmDesc2
	.word	AW1SturmDesc3
	.word	AW1SturmDesc4
	.word	AW1SturmVictory
	.word	AW1SturmCOPQuote1
	.word	AW1SturmCOPQuote2
	.word	AW1SturmCOPQuote3
	.word	AW1SturmCOPQuote4
	.word	AW1SturmCOPQuote5
	.word	AW1SturmCOPQuote6
	
	.word	AW1SturmVsName
	.word	AW1SturmVsCOPower
	.word	AW1SturmVsSuperPower
	.word	AW1SturmVsDesc1
	.word	AW1SturmVsDesc2
	.word	AW1SturmVsDesc3
	.word	AW1SturmVsDesc4
	.word	AW1SturmVsVictory
	.word	AW1SturmVsCOPQuote1
	.word	AW1SturmVsCOPQuote2
	.word	AW1SturmVsCOPQuote3
	.word	AW1SturmVsCOPQuote4
	.word	AW1SturmVsCOPQuote5
	.word	AW1SturmVsCOPQuote6
	
	.word	AWDSJavierName
	.word	AWDSJavierCOPower
	.word	AWDSJavierSuperPower
	.word	AWDSJavierDesc1
	.word	AWDSJavierDesc2
	.word	AWDSJavierDesc3
	.word	AWDSJavierDesc4
	.word	AWDSJavierVictory
	.word	AWDSJavierCOPQuote1
	.word	AWDSJavierCOPQuote2
	.word	AWDSJavierCOPQuote3
	.word	AWDSJavierCOPQuote4
	.word	AWDSJavierCOPQuote5
	.word	AWDSJavierCOPQuote6
	
	.word	AW1AndyName
	.word	AW1AndyCOPower
	.word	AW1AndySuperPower
	.word	AW1AndyDesc1
	.word	AW1AndyDesc2
	.word	AW1AndyDesc3
	.word	AW1AndyDesc4
	.word	AW1AndyVictory
	.word	AW1AndyCOPQuote1
	.word	AW1AndyCOPQuote2
	.word	AW1AndyCOPQuote3
	.word	AW1AndyCOPQuote4
	.word	AW1AndyCOPQuote5
	.word	AW1AndyCOPQuote6
	
	.word	AW1MaxName
	.word	AW1MaxCOPower
	.word	AW1MaxSuperPower
	.word	AW1MaxDesc1
	.word	AW1MaxDesc2
	.word	AW1MaxDesc3
	.word	AW1MaxDesc4
	.word	AW1MaxVictory
	.word	AW1MaxCOPQuote1
	.word	AW1MaxCOPQuote2
	.word	AW1MaxCOPQuote3
	.word	AW1MaxCOPQuote4
	.word	AW1MaxCOPQuote5
	.word	AW1MaxCOPQuote6	
	
	.word	AW1SamiName
	.word	AW1SamiCOPower
	.word	AW1SamiSuperPower
	.word	AW1SamiDesc1
	.word	AW1SamiDesc2
	.word	AW1SamiDesc3
	.word	AW1SamiDesc4
	.word	AW1SamiVictory
	.word	AW1SamiCOPQuote1
	.word	AW1SamiCOPQuote2
	.word	AW1SamiCOPQuote3
	.word	AW1SamiCOPQuote4
	.word	AW1SamiCOPQuote5
	.word	AW1SamiCOPQuote6
	
	.word	AW1NellName
	.word	AW1NellCOPower
	.word	AW1NellSuperPower
	.word	AW1NellDesc1
	.word	AW1NellDesc2
	.word	AW1NellDesc3
	.word	AW1NellDesc4
	.word	AW1NellVictory
	.word	AW1NellCOPQuote1
	.word	AW1NellCOPQuote2
	.word	AW1NellCOPQuote3
	.word	AW1NellCOPQuote4
	.word	AW1NellCOPQuote5
	.word	AW1NellCOPQuote6
	
	.word	AW1OlafName
	.word	AW1OlafCOPower
	.word	AW1OlafSuperPower
	.word	AW1OlafDesc1
	.word	AW1OlafDesc2
	.word	AW1OlafDesc3
	.word	AW1OlafDesc4
	.word	AW1OlafVictory
	.word	AW1OlafCOPQuote1
	.word	AW1OlafCOPQuote2
	.word	AW1OlafCOPQuote3
	.word	AW1OlafCOPQuote4
	.word	AW1OlafCOPQuote5
	.word	AW1OlafCOPQuote6
	
	.word	AW1GritName
	.word	AW1GritCOPower
	.word	AW1GritSuperPower
	.word	AW1GritDesc1
	.word	AW1GritDesc2
	.word	AW1GritDesc3
	.word	AW1GritDesc4
	.word	AW1GritVictory
	.word	AW1GritCOPQuote1
	.word	AW1GritCOPQuote2
	.word	AW1GritCOPQuote3
	.word	AW1GritCOPQuote4
	.word	AW1GritCOPQuote5
	.word	AW1GritCOPQuote6
	
	.word	AW1KanbeiName
	.word	AW1KanbeiCOPower
	.word	AW1KanbeiSuperPower
	.word	AW1KanbeiDesc1
	.word	AW1KanbeiDesc2
	.word	AW1KanbeiDesc3
	.word	AW1KanbeiDesc4
	.word	AW1KanbeiVictory
	.word	AW1KanbeiCOPQuote1
	.word	AW1KanbeiCOPQuote2
	.word	AW1KanbeiCOPQuote3
	.word	AW1KanbeiCOPQuote4
	.word	AW1KanbeiCOPQuote5
	.word	AW1KanbeiCOPQuote6
	
	.word	AW1SonjaName
	.word	AW1SonjaCOPower
	.word	AW1SonjaSuperPower
	.word	AW1SonjaDesc1
	.word	AW1SonjaDesc2
	.word	AW1SonjaDesc3
	.word	AW1SonjaDesc4
	.word	AW1SonjaVictory
	.word	AW1SonjaCOPQuote1
	.word	AW1SonjaCOPQuote2
	.word	AW1SonjaCOPQuote3
	.word	AW1SonjaCOPQuote4
	.word	AW1SonjaCOPQuote5
	.word	AW1SonjaCOPQuote6
	
	.word	AW1EagleName
	.word	AW1EagleCOPower
	.word	AW1EagleSuperPower
	.word	AW1EagleDesc1
	.word	AW1EagleDesc2
	.word	AW1EagleDesc3
	.word	AW1EagleDesc4
	.word	AW1EagleVictory
	.word	AW1EagleCOPQuote1
	.word	AW1EagleCOPQuote2
	.word	AW1EagleCOPQuote3
	.word	AW1EagleCOPQuote4
	.word	AW1EagleCOPQuote5
	.word	AW1EagleCOPQuote6
	
	.word	AW1DrakeName
	.word	AW1DrakeCOPower
	.word	AW1DrakeSuperPower
	.word	AW1DrakeDesc1
	.word	AW1DrakeDesc2
	.word	AW1DrakeDesc3
	.word	AW1DrakeDesc4
	.word	AW1DrakeVictory
	.word	AW1DrakeCOPQuote1
	.word	AW1DrakeCOPQuote2
	.word	AW1DrakeCOPQuote3
	.word	AW1DrakeCOPQuote4
	.word	AW1DrakeCOPQuote5
	.word	AW1DrakeCOPQuote6
	
	.word	SFWCarolineName
	.word	SFWCarolineCOPower
	.word	SFWCarolineSuperPower
	.word	SFWCarolineDesc1
	.word	SFWCarolineDesc2
	.word	SFWCarolineDesc3
	.word	SFWCarolineDesc4
	.word	SFWCarolineVictory
	.word	SFWCarolineCOPQuote1
	.word	SFWCarolineCOPQuote2
	.word	SFWCarolineCOPQuote3
	.word	SFWCarolineCOPQuote4
	.word	SFWCarolineCOPQuote5
	.word	SFWCarolineCOPQuote6
	
	.word	SFWYamamotoName
	.word	SFWYamamotoCOPower
	.word	SFWYamamotoSuperPower
	.word	SFWYamamotoDesc1
	.word	SFWYamamotoDesc2
	.word	SFWYamamotoDesc3
	.word	SFWYamamotoDesc4
	.word	SFWYamamotoVictory
	.word	SFWYamamotoCOPQuote1
	.word	SFWYamamotoCOPQuote2
	.word	SFWYamamotoCOPQuote3
	.word	SFWYamamotoCOPQuote4
	.word	SFWYamamotoCOPQuote5
	.word	SFWYamamotoCOPQuote6
	
	.word	SFWBillygatesName
	.word	SFWBillygatesCOPower
	.word	SFWBillygatesSuperPower
	.word	SFWBillygatesDesc1
	.word	SFWBillygatesDesc2
	.word	SFWBillygatesDesc3
	.word	SFWBillygatesDesc4
	.word	SFWBillygatesVictory
	.word	SFWBillygatesCOPQuote1
	.word	SFWBillygatesCOPQuote2
	.word	SFWBillygatesCOPQuote3
	.word	SFWBillygatesCOPQuote4
	.word	SFWBillygatesCOPQuote5
	.word	SFWBillygatesCOPQuote6	
	
	.word	AWDSOlafName
	.word	AWDSOlafCOPower
	.word	AWDSOlafSuperPower
	.word	AWDSOlafDesc1
	.word	AWDSOlafDesc2
	.word	AWDSOlafDesc3
	.word	AWDSOlafDesc4
	.word	AWDSOlafVictory
	.word	AWDSOlafCOPQuote1
	.word	AWDSOlafCOPQuote2
	.word	AWDSOlafCOPQuote3
	.word	AWDSOlafCOPQuote4
	.word	AWDSOlafCOPQuote5
	.word	AWDSOlafCOPQuote6
	
	.word	AWDSNellName
	.word	AWDSNellCOPower
	.word	AWDSNellSuperPower
	.word	AWDSNellDesc1
	.word	AWDSNellDesc2
	.word	AWDSNellDesc3
	.word	AWDSNellDesc4
	.word	AWDSNellVictory
	.word	AWDSNellCOPQuote1
	.word	AWDSNellCOPQuote2
	.word	AWDSNellCOPQuote3
	.word	AWDSNellCOPQuote4
	.word	AWDSNellCOPQuote5
	.word	AWDSNellCOPQuote6
	
	.word	AWDSRachelName
	.word	AWDSRachelCOPower
	.word	AWDSRachelSuperPower
	.word	AWDSRachelDesc1
	.word	AWDSRachelDesc2
	.word	AWDSRachelDesc3
	.word	AWDSRachelDesc4
	.word	AWDSRachelVictory
	.word	AWDSRachelCOPQuote1
	.word	AWDSRachelCOPQuote2
	.word	AWDSRachelCOPQuote3
	.word	AWDSRachelCOPQuote4
	.word	AWDSRachelCOPQuote5
	.word	AWDSRachelCOPQuote6
	
	.word	AWDSAndyName
	.word	AWDSAndyCOPower
	.word	AWDSAndySuperPower
	.word	AWDSAndyDesc1
	.word	AWDSAndyDesc2
	.word	AWDSAndyDesc3
	.word	AWDSAndyDesc4
	.word	AWDSAndyVictory
	.word	AWDSAndyCOPQuote1
	.word	AWDSAndyCOPQuote2
	.word	AWDSAndyCOPQuote3
	.word	AWDSAndyCOPQuote4
	.word	AWDSAndyCOPQuote5
	.word	AWDSAndyCOPQuote6
	
	.word	AWDSMaxName
	.word	AWDSMaxCOPower
	.word	AWDSMaxSuperPower
	.word	AWDSMaxDesc1
	.word	AWDSMaxDesc2
	.word	AWDSMaxDesc3
	.word	AWDSMaxDesc4
	.word	AWDSMaxVictory
	.word	AWDSMaxCOPQuote1
	.word	AWDSMaxCOPQuote2
	.word	AWDSMaxCOPQuote3
	.word	AWDSMaxCOPQuote4
	.word	AWDSMaxCOPQuote5
	.word	AWDSMaxCOPQuote6	
	
	.word	AWDSSamiName
	.word	AWDSSamiCOPower
	.word	AWDSSamiSuperPower
	.word	AWDSSamiDesc1
	.word	AWDSSamiDesc2
	.word	AWDSSamiDesc3
	.word	AWDSSamiDesc4
	.word	AWDSSamiVictory
	.word	AWDSSamiCOPQuote1
	.word	AWDSSamiCOPQuote2
	.word	AWDSSamiCOPQuote3
	.word	AWDSSamiCOPQuote4
	.word	AWDSSamiCOPQuote5
	.word	AWDSSamiCOPQuote6
	
	.word	AWDSGritName
	.word	AWDSGritCOPower
	.word	AWDSGritSuperPower
	.word	AWDSGritDesc1
	.word	AWDSGritDesc2
	.word	AWDSGritDesc3
	.word	AWDSGritDesc4
	.word	AWDSGritVictory
	.word	AWDSGritCOPQuote1
	.word	AWDSGritCOPQuote2
	.word	AWDSGritCOPQuote3
	.word	AWDSGritCOPQuote4
	.word	AWDSGritCOPQuote5
	.word	AWDSGritCOPQuote6
	
	.word	AWDSKanbeiName
	.word	AWDSKanbeiCOPower
	.word	AWDSKanbeiSuperPower
	.word	AWDSKanbeiDesc1
	.word	AWDSKanbeiDesc2
	.word	AWDSKanbeiDesc3
	.word	AWDSKanbeiDesc4
	.word	AWDSKanbeiVictory
	.word	AWDSKanbeiCOPQuote1
	.word	AWDSKanbeiCOPQuote2
	.word	AWDSKanbeiCOPQuote3
	.word	AWDSKanbeiCOPQuote4
	.word	AWDSKanbeiCOPQuote5
	.word	AWDSKanbeiCOPQuote6	
	
	.word	AWDSSonjaName
	.word	AWDSSonjaCOPower
	.word	AWDSSonjaSuperPower
	.word	AWDSSonjaDesc1
	.word	AWDSSonjaDesc2
	.word	AWDSSonjaDesc3
	.word	AWDSSonjaDesc4
	.word	AWDSSonjaVictory
	.word	AWDSSonjaCOPQuote1
	.word	AWDSSonjaCOPQuote2
	.word	AWDSSonjaCOPQuote3
	.word	AWDSSonjaCOPQuote4
	.word	AWDSSonjaCOPQuote5
	.word	AWDSSonjaCOPQuote6

	.word	AWDSEagleName
	.word	AWDSEagleCOPower
	.word	AWDSEagleSuperPower
	.word	AWDSEagleDesc1
	.word	AWDSEagleDesc2
	.word	AWDSEagleDesc3
	.word	AWDSEagleDesc4
	.word	AWDSEagleVictory
	.word	AWDSEagleCOPQuote1
	.word	AWDSEagleCOPQuote2
	.word	AWDSEagleCOPQuote3
	.word	AWDSEagleCOPQuote4
	.word	AWDSEagleCOPQuote5
	.word	AWDSEagleCOPQuote6

	.word	AWDSDrakeName
	.word	AWDSDrakeCOPower
	.word	AWDSDrakeSuperPower
	.word	AWDSDrakeDesc1
	.word	AWDSDrakeDesc2
	.word	AWDSDrakeDesc3
	.word	AWDSDrakeDesc4
	.word	AWDSDrakeVictory
	.word	AWDSDrakeCOPQuote1
	.word	AWDSDrakeCOPQuote2
	.word	AWDSDrakeCOPQuote3
	.word	AWDSDrakeCOPQuote4
	.word	AWDSDrakeCOPQuote5
	.word	AWDSDrakeCOPQuote6

	.word	AWDSFlakName
	.word	AWDSFlakCOPower
	.word	AWDSFlakSuperPower
	.word	AWDSFlakDesc1
	.word	AWDSFlakDesc2
	.word	AWDSFlakDesc3
	.word	AWDSFlakDesc4
	.word	AWDSFlakVictory
	.word	AWDSFlakCOPQuote1
	.word	AWDSFlakCOPQuote2
	.word	AWDSFlakCOPQuote3
	.word	AWDSFlakCOPQuote4
	.word	AWDSFlakCOPQuote5
	.word	AWDSFlakCOPQuote6
	
	.word	AWDSLashName
	.word	AWDSLashCOPower
	.word	AWDSLashSuperPower
	.word	AWDSLashDesc1
	.word	AWDSLashDesc2
	.word	AWDSLashDesc3
	.word	AWDSLashDesc4
	.word	AWDSLashVictory
	.word	AWDSLashCOPQuote1
	.word	AWDSLashCOPQuote2
	.word	AWDSLashCOPQuote3
	.word	AWDSLashCOPQuote4
	.word	AWDSLashCOPQuote5
	.word	AWDSLashCOPQuote6	
	
	.word	AWDSAdderName
	.word	AWDSAdderCOPower
	.word	AWDSAdderSuperPower
	.word	AWDSAdderDesc1
	.word	AWDSAdderDesc2
	.word	AWDSAdderDesc3
	.word	AWDSAdderDesc4
	.word	AWDSAdderVictory
	.word	AWDSAdderCOPQuote1
	.word	AWDSAdderCOPQuote2
	.word	AWDSAdderCOPQuote3
	.word	AWDSAdderCOPQuote4
	.word	AWDSAdderCOPQuote5
	.word	AWDSAdderCOPQuote6	
	
	.word	AWDSHawkeName
	.word	AWDSHawkeCOPower
	.word	AWDSHawkeSuperPower
	.word	AWDSHawkeDesc1
	.word	AWDSHawkeDesc2
	.word	AWDSHawkeDesc3
	.word	AWDSHawkeDesc4
	.word	AWDSHawkeVictory
	.word	AWDSHawkeCOPQuote1
	.word	AWDSHawkeCOPQuote2
	.word	AWDSHawkeCOPQuote3
	.word	AWDSHawkeCOPQuote4
	.word	AWDSHawkeCOPQuote5
	.word	AWDSHawkeCOPQuote6	
	
	.word	AWDSVonboltName
	.word	AWDSVonboltCOPower
	.word	AWDSVonboltSuperPower
	.word	AWDSVonboltDesc1
	.word	AWDSVonboltDesc2
	.word	AWDSVonboltDesc3
	.word	AWDSVonboltDesc4
	.word	AWDSVonboltVictory
	.word	AWDSVonboltCOPQuote1
	.word	AWDSVonboltCOPQuote2
	.word	AWDSVonboltCOPQuote3
	.word	AWDSVonboltCOPQuote4
	.word	AWDSVonboltCOPQuote5
	.word	AWDSVonboltCOPQuote6

	.word	AWDSHachiName
	.word	AWDSHachiCOPower
	.word	AWDSHachiSuperPower
	.word	AWDSHachiDesc1
	.word	AWDSHachiDesc2
	.word	AWDSHachiDesc3
	.word	AWDSHachiDesc4
	.word	AWDSHachiVictory
	.word	AWDSHachiCOPQuote1
	.word	AWDSHachiCOPQuote2
	.word	AWDSHachiCOPQuote3
	.word	AWDSHachiCOPQuote4
	.word	AWDSHachiCOPQuote5
	.word	AWDSHachiCOPQuote6	
	
	.word	AWDSColinName
	.word	AWDSColinCOPower
	.word	AWDSColinSuperPower
	.word	AWDSColinDesc1
	.word	AWDSColinDesc2
	.word	AWDSColinDesc3
	.word	AWDSColinDesc4
	.word	AWDSColinVictory
	.word	AWDSColinCOPQuote1
	.word	AWDSColinCOPQuote2
	.word	AWDSColinCOPQuote3
	.word	AWDSColinCOPQuote4
	.word	AWDSColinCOPQuote5
	.word	AWDSColinCOPQuote6

	.word	AWDSJessName
	.word	AWDSJessCOPower
	.word	AWDSJessSuperPower
	.word	AWDSJessDesc1
	.word	AWDSJessDesc2
	.word	AWDSJessDesc3
	.word	AWDSJessDesc4
	.word	AWDSJessVictory
	.word	AWDSJessCOPQuote1
	.word	AWDSJessCOPQuote2
	.word	AWDSJessCOPQuote3
	.word	AWDSJessCOPQuote4
	.word	AWDSJessCOPQuote5
	.word	AWDSJessCOPQuote6

	.word	AWDSSenseiName
	.word	AWDSSenseiCOPower
	.word	AWDSSenseiSuperPower
	.word	AWDSSenseiDesc1
	.word	AWDSSenseiDesc2
	.word	AWDSSenseiDesc3
	.word	AWDSSenseiDesc4
	.word	AWDSSenseiVictory
	.word	AWDSSenseiCOPQuote1
	.word	AWDSSenseiCOPQuote2
	.word	AWDSSenseiCOPQuote3
	.word	AWDSSenseiCOPQuote4
	.word	AWDSSenseiCOPQuote5
	.word	AWDSSenseiCOPQuote6
	
	.word	CCOVenomAdderName
	.word	CCOVenomAdderCOPower
	.word	CCOVenomAdderSuperPower
	.word	CCOVenomAdderDesc1
	.word	CCOVenomAdderDesc2
	.word	CCOVenomAdderDesc3
	.word	CCOVenomAdderDesc4
	.word	CCOVenomAdderVictory
	.word	CCOVenomAdderCOPQuote1
	.word	CCOVenomAdderCOPQuote2
	.word	CCOVenomAdderCOPQuote3
	.word	CCOVenomAdderCOPQuote4
	.word	CCOVenomAdderCOPQuote5
	.word	CCOVenomAdderCOPQuote6	
	
	.word	CCOEpochName
	.word	CCOEpochCOPower
	.word	CCOEpochSuperPower
	.word	CCOEpochDesc1
	.word	CCOEpochDesc2
	.word	CCOEpochDesc3
	.word	CCOEpochDesc4
	.word	CCOEpochVictory
	.word	CCOEpochCOPQuote1
	.word	CCOEpochCOPQuote2
	.word	CCOEpochCOPQuote3
	.word	CCOEpochCOPQuote4
	.word	CCOEpochCOPQuote5
	.word	CCOEpochCOPQuote6	

	.word	CCOWalterName
	.word	CCOWalterCOPower
	.word	CCOWalterSuperPower
	.word	CCOWalterDesc1
	.word	CCOWalterDesc2
	.word	CCOWalterDesc3
	.word	CCOWalterDesc4
	.word	CCOWalterVictory
	.word	CCOWalterCOPQuote1
	.word	CCOWalterCOPQuote2
	.word	CCOWalterCOPQuote3
	.word	CCOWalterCOPQuote4
	.word	CCOWalterCOPQuote5
	.word	CCOWalterCOPQuote6	

	.word	CCOZedName
	.word	CCOZedCOPower
	.word	CCOZedSuperPower
	.word	CCOZedDesc1
	.word	CCOZedDesc2
	.word	CCOZedDesc3
	.word	CCOZedDesc4
	.word	CCOZedVictory
	.word	CCOZedCOPQuote1
	.word	CCOZedCOPQuote2
	.word	CCOZedCOPQuote3
	.word	CCOZedCOPQuote4
	.word	CCOZedCOPQuote5
	.word	CCOZedCOPQuote6	
;Blank Line	
