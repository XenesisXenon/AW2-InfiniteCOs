;coremenucommands.asm"

;Dynamic Map ID:

	.align 4
;	.include "code/menucommands/menudesignmaps.asm"
;	.include "code/menucommands/menudesignmapsjukebox.asm"
	.include "code/menucommands/menuunitactions.asm"
;	.include "code/menucommands/menuunitactionbuildunits.asm"
	.include "code/menucommands/menumaingame.asm"
	.include "code/menucommands/menudebug.asm"
	
	.align 4
;	.include "code/menucommands/submenucode/designmapsjukeboxsubmenu.asm"
;	.include "code/menucommands/submenucode/unitactionbuildunitsubmenu.asm"
	.include "code/menucommands/submenucode/menuactiondebugsubmenu.asm"
	
;	.include "code/menucommands/designmaps/dmjuke/onselectmenunextsong.asm"
;	.include "code/menucommands/designmaps/dmjuke/onselectmenuprevioussong.asm"
;	.include "code/menucommands/designmaps/dmjuke/onselectmenurandomsong.asm"
;	.include "code/menucommands/designmaps/dmjuke/onselectnowplaying.asm"
	
;	.include "code/menucommands/unitactions/visibilitycheckbuildunitsubmenuawp.asm"
;	.include "code/menucommands/unitactions/buildunit/onselectbuildunit1awp.asm"
;	.include "code/menucommands/unitactions/buildunit/onselectbuildunit2awp.asm"
;	.include "code/menucommands/unitactions/buildunit/onselectbuildunit3awp.asm"
;	.include "code/menucommands/unitactions/buildunit/onselectbuildunit4awp.asm"
;	.include "code/menucommands/unitactions/buildunit/visibilitycheckbuildunit1awp.asm"
;	.include "code/menucommands/unitactions/buildunit/visibilitycheckbuildunit2awp.asm"
;	.include "code/menucommands/unitactions/buildunit/visibilitycheckbuildunit3awp.asm"
;	.include "code/menucommands/unitactions/buildunit/visibilitycheckbuildunit4awp.asm"
	
	.include "code/menucommands/maingame/onselectswap.asm"
	.include "code/menucommands/maingame/onselect_endandcapture.asm"
	.include "code/menucommands/maingame/visibilitycheck_secondco.asm"
	.include "code/menucommands/maingame/visibilitycheck_super.asm"

	.include "code/menucommands/maingame/debug/onselectdebugmaxfunds.asm"
	.include "code/menucommands/maingame/debug/onselectdebugnextco.asm"
	.include "code/menucommands/maingame/debug/onselectdebugpreviousco.asm"
	.include "code/menucommands/maingame/debug/onselectdebugpoweroff.asm"
	.include "code/menucommands/maingame/debug/onselectdebugrefreshunits.asm"
	.include "code/menucommands/maingame/debug/onselectdebugrepairunits.asm"
	.include "code/menucommands/maingame/debug/onselectdebugruncorescript.asm"
	.include "code/menucommands/maingame/debug/visibilitycheckalways.asm"
	.include "code/menucommands/maingame/debug/visibilitychecknever.asm"
	.include "code/menucommands/maingame/debug/visibilitycheckxenesis.asm"
	
	.align 4
MenuFunctionCommon:
	push	{r14}
	bl	LongBLMenuFunction1
	bl	LongBLMenuFunction2
	bl	LongBLMenuFunction3
	bl	LongBLMenuFunction4
	bl	LongBLMenuFunction5
	pop	{r1}
	bx	r1
	

LongBLMenuFunction1:
	LongBL r1,0x08034F48+1
LongBLMenuFunction2:
	LongBL r0,0x0801A168+1
LongBLMenuFunction3:
	LongBL r1,0x0802C57C+1
LongBLMenuFunction4:
	LongBL r0,0x080424FC+1
LongBLMenuFunction5:
	LongBL r1,0x0802C594+1

;Required to Load a Submenu	
LongMenuLoadFunctionA:
	LongBL	r0,0x0801A614+1
LongMenuLoadFunctionB:
	LongBL	r0,0x0801A168+1
LongMenuLoadFunctionC:
	LongBL	r0,0x08024268+1
	

;blank line
