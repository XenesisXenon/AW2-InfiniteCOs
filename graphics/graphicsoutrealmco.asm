;Outrealm CO Blank Template

GraphicsOutrealmPalette:
	.dh	0x7FF,0x7FF,0x7FF,0x7FF,0x7FF,0x7FF,0x7FF,0x7FF
	.dh	0x7FF,0x7FF,0x7FF,0x7FF,0x7FF,0x7FF,0x7FF,0x7FF
GraphicsOutrealmCOGraphic:
	.dw GraphicsOutrealmTop
	.dw GraphicsOutrealmBody
	
GraphicsOutrealmTop:
	.import graphics/CO/OutrealmCO/outrealmtop.bin
GraphicsOutrealmBody:	
	.import graphics/CO/OutrealmCO/outrealmbody.bin
GraphicsOutrealmFace:	
	.import graphics/CO/OutrealmCO/outrealmneutral.bin
GraphicsOutrealmName:
	.import graphics/CO/OutrealmCO/outrealmname.bin	
GraphicsOutrealmMug:
	.import graphics/CO/OutrealmCO/outrealmmug.bin
	
;
