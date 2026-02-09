;outrealm co blank template

graphicsoutrealmpalette:
	.dh	0x7ff,0x7ff,0x7ff,0x7ff,0x7ff,0x7ff,0x7ff,0x7ff
	.dh	0x7ff,0x7ff,0x7ff,0x7ff,0x7ff,0x7ff,0x7ff,0x7ff
graphicsoutrealmcographic:
	.dw graphicsoutrealmtop
	.dw graphicsoutrealmbody
	
graphicsoutrealmtop:
	.import "graphics/co/outrealmco/outrealmtop.bin"
graphicsoutrealmbody:
	.import "graphics/co/outrealmco/outrealmbody.bin"
graphicsoutrealmface:
	.import "graphics/co/outrealmco/outrealmneutral.bin"
graphicsoutrealmname:
	.import "graphics/co/outrealmco/outrealmname.bin"
graphicsoutrealmmug:
	.import "graphics/co/outrealmco/outrealmmug.bin"
	
;
