;coregraphics.asm"
;Graphics for Infinite Cos


;Graphics which do not require fixed locations
	.align 4
GraphicsVeteranIcons:
	.import "graphics/unitmapsprite/infotags/awpveterancyicons.bin"

	.align 4
Graphics_AWDS_ForceRanks_Palette:
	;.import "graphics/GUI/awds-skills-complete.bin"
	.import "graphics/gui/res_skill.bin"	;file from awds super forces
	
Graphics_AWDS_Property_Tower:
	.align 4
	.import "graphics/terrain/awds_tower.bin"
Graphics_AW2_Property_Lab:
	.import "graphics/terrain/aw2_lab.bin"

;Generic Blank Outrealm Graphics
	.align 4
.include "graphics/graphicsoutrealmco.asm"

.include "graphics/graphicsawdsjugger.asm"
.include "graphics/graphicsawdskindle.asm"
.include "graphics/graphicsawdssasha.asm"
.include "graphics/graphicsawdsgrimm.asm"
.include "graphics/graphicsawdsjake.asm"
.include "graphics/graphicsawdsjavier.asm"
.include "graphics/graphicsawdskoal.asm"
.include "graphics/graphicsawdsrachel.asm"
.include "graphics/graphicsawdsvonbolt.asm"

.include "graphics/graphicsawdsadder.asm"
.include "graphics/graphicsawdsandy.asm"
.include "graphics/graphicsawdsdrake.asm"

.include "graphics/graphicsawdseagle.asm"
.include "graphics/graphicsawdscolin.asm"
.include "graphics/graphicsawdsflak.asm"
.include "graphics/graphicsawdsgrit.asm"
.include "graphics/graphicsawdshachi.asm"
.include "graphics/graphicsawdshawke.asm"
.include "graphics/graphicsawdsjess.asm"
.include "graphics/graphicsawdskanbei.asm"
.include "graphics/graphicsawdslash.asm"
.include "graphics/graphicsawdsmax.asm"
.include "graphics/graphicsawdsnell.asm"
.include "graphics/graphicsawdsolaf.asm"
.include "graphics/graphicsawdssami.asm"
.include "graphics/graphicsawdssensei.asm"
.include "graphics/graphicsawdssonja.asm"


.include "graphics/graphicsaw1nell.asm"
.include "graphics/graphicsaw1andy.asm"
.include "graphics/graphicsaw1max.asm"
.include "graphics/graphicsaw1sami.asm"
.include "graphics/graphicsaw1olaf.asm"
.include "graphics/graphicsaw1grit.asm"
.include "graphics/graphicsaw1kanbei.asm"
.include "graphics/graphicsaw1sonja.asm"
.include "graphics/graphicsaw1eagle.asm"
.include "graphics/graphicsaw1drake.asm"
.include "graphics/graphicsaw1sturm.asm"

.include "graphics/graphicssfwcarol.asm"
.include "graphics/graphicssfwyamamoto.asm"
.include "graphics/graphicssfwbillygates.asm"

;.include "graphics/graphicsccokirby.asm"
.include "graphics/graphicsccovenomadder.asm"
.include "graphics/graphicsccoepoch.asm"
.include "graphics/graphicsccowalter.asm"
.include "graphics/graphicsccoeliwood.asm"
.include "graphics/graphics_cconergal.asm"
	
;Note, Small Mugs need to be in order of CO ID

GraphicsOutrealmMugSmall:
;Small Mugs for Troopers
	.import "graphics/co/outrealmco/outrealmsmug.bin"
	.import "graphics/co/outrealmco/outrealmsmug.bin"
	.import "graphics/co/outrealmco/outrealmsmug.bin"
	.import "graphics/co/outrealmco/outrealmsmug.bin"
	.import "graphics/co/outrealmco/outrealmsmug.bin"

;Custom COs Here
	.import "graphics/co/awdsjake/awdsjakesmug.bin"
	.import "graphics/co/awdsrachel/awdsrachelsmug.bin"
	.import "graphics/co/awdssasha/awdssashasmug.bin"
	.import "graphics/co/awdsjavier/awdsjaviersmug.bin"
	.import "graphics/co/awdsgrimm/awdsgrimmsmug.bin"
	.import "graphics/co/awdsjugger/awdsjuggersmug.bin"
	.import "graphics/co/awdskoal/awdskoalsmug.bin"
	.import "graphics/co/awdskindle/awdskindlesmug.bin"
	.import "graphics/co/awdsvonbolt/awdsvonboltsmug.bin"

	.import "graphics/co/awdsnell/awdsnellsmug.bin"
	.import "graphics/co/awdsandy/awdsandysmug.bin"
	.import "graphics/co/awdsmax/awdsmaxsmug.bin"
	.import "graphics/co/awdssami/awdssamismug.bin"
	.import "graphics/co/awdshachi/awdshachismug.bin"
	.import "graphics/co/awdsolaf/awdsolafsmug.bin"
	.import "graphics/co/awdsgrit/awdsgritsmug.bin"
	.import "graphics/co/awdscolin/awdscolinsmug.bin"
	.import "graphics/co/awdskanbei/awdskanbeismug.bin"
	.import "graphics/co/awdssonja/awdssonjasmug.bin"
	.import "graphics/co/awdssensei/awdssenseismug.bin"
	.import "graphics/co/awdseagle/awdseaglesmug.bin"
	.import "graphics/co/awdsdrake/awdsdrakesmug.bin"
	.import "graphics/co/awdsjess/awdsjesssmug.bin"
	.import "graphics/co/awdsflak/awdsflaksmug.bin"
	.import "graphics/co/awdslash/awdslashsmug.bin"
	.import "graphics/co/awdsadder/awdsaddersmug.bin"
	.import "graphics/co/awdshawke/awdshawkesmug.bin"
	
	.import "graphics/co/aw1sturm/aw1sturmsmug.bin"
	.import "graphics/co/aw1sturm/aw1sturmsmug.bin"

	.import "graphics/co/aw1nell/aw1nellsmug.bin"
	.import "graphics/co/aw1andy/aw1andysmug.bin"
	.import "graphics/co/aw1max/aw1maxsmug.bin"
	.import "graphics/co/aw1sami/aw1samismug.bin"
	.import "graphics/co/aw1olaf/aw1olafsmug.bin"
	.import "graphics/co/aw1grit/aw1gritsmug.bin"
	.import "graphics/co/aw1kanbei/aw1kanbeismug.bin"
	.import "graphics/co/aw1sonja/aw1sonjasmug.bin"
	.import "graphics/co/aw1eagle/aw1eaglesmug.bin"
	.import "graphics/co/aw1drake/aw1drakesmug.bin"
	.import "graphics/co/sfwcarol/sfwcarolsmug.bin"
	.import "graphics/co/sfwbillygates/sfwbillygatessmug.bin"
	.import "graphics/co/sfwyamamoto/sfwyamamotosmug.bin"
	
	.import "graphics/co/ccovenomadder/ccovenomaddersmug.bin"
	.import "graphics/co/ccoepoch/ccoepochsmug.bin"
	.import "graphics/co/ccowalter/ccowaltersmug.bin"
	.import "graphics/co/outrealmco/outrealmsmug.bin"
	.import "graphics/co/ccoeliwood/eliwoodsmug.bin"	;eliwood
	.import "graphics/co/cconergal/nergalsmug.bin"		;nergal
	.import "graphics/co/outrealmco/outrealmsmug.bin"	;transmog
	
	
	
;Blank Line
