;hook_initialmaps.asm
;Sets which maps are first

.org 0x08076A6A
	ldr	r5,=Core_InitialCampaignMap+1
	bx	r5
	.pool

;.org 0x08076A6C
;Normal Campaign
	;mov	r7,0
	
.org 0x08076AAC
;Hard Campaign
	mov	r7,34
