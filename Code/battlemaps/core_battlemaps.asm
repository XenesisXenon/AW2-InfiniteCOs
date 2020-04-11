;core_battlemaps.asm

.relativeinclude on
	.include "BitCheck_GlobalStatus.asm"
	.include "Bitset_UnlockAll.asm"
	.include "Bitset_ToggleGlobal.asm"
	.include "Bitset_ClearVersusCO.asm"
	.include "Bitset_ClearChargeType.asm"
	.include "AvailCheck_TurnTimer.asm"
	.include "AvailCheck_UnlockAll.asm"
	.include "AvailCheck_ChargeType.asm"
	.include "AvailCheck_Debug.asm"
	.include "AvailCheck_CampaignCO.asm"
	.include "AvailCheck_VersusCO.asm"
	.include "AvailCheck_CampaignForces.asm"
	.include "AvailCheck_CampaignTutorialSkip.asm"
	.include "AvailCheck_AWDSWeather.asm"
	
	.include "Core_TitleTextSwap.asm"
	.include "Core_BattlemapsList_Swap.asm"
.relativeinclude off
