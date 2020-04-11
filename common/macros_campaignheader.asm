;macros_campaignheader.asm

;	.macro setCampaign_,CampaignID,EntryValue
;		.org Campaign_HeaderTable + (CampaignID)*0x30 + 0x0
;		.dh	
;	.endmacro	

	.macro setCampaign_MapID,CampaignID,MapID	
	;Sets which Map Header to use from the Map List
		.org Campaign_HeaderTable + (CampaignID)*0x30
		.dh	MapID
	.endmacro	

	.macro setCampaign_FlagType,CampaignID,EntryValue	
	;Sets the Flag that Appears
		.org Campaign_HeaderTable + (CampaignID)*0x30 + 2
		.db	EntryValue
	.endmacro		

	.macro setCampaign_StarRating,CampaignID,EntryValue 
	;Sets how many stars the level is rated
		.org Campaign_HeaderTable + (CampaignID)*0x30 + 3
		.db	EntryValue
	.endmacro

	.macro setCampaign_HardStarRating,CampaignID,EntryValue 
	;Sets how many stars the level is rated in hard
		.org Campaign_HeaderTable + (CampaignID)*0x30 + 4
		.db	EntryValue
	.endmacro
	
	.macro setCampaign_FlagPosition,CampaignID,EntryValue,EntryValue2
	;Positions the Flag on the World Map, [0,0] is Top Left, Offset in pixels
		.org Campaign_HeaderTable + (CampaignID)*0x30 + 6
		.dh	EntryValue,EntryValue2
	.endmacro


	.macro setCampaign_RecolourPointer,CampaignID,EntryValue
	;Pointer to the list that recolours map areas after a clear
		.org Campaign_HeaderTable + (CampaignID)*0x30 + 12
		.dw	EntryValue
	.endmacro

	.macro setCampaign_MapDescText,CampaignID,EntryValue
	;Text String ID that is used for this mission
		.org Campaign_HeaderTable + (CampaignID)*0x30 + 16
		.dh	EntryValue
	.endmacro

	.macro setCampaign_Event,CampaignID,EntryValue
	;Events script that runs upon Map Launch
		.org Campaign_HeaderTable + (CampaignID)*0x30 + 20
		.dw	EntryValue
	.endmacro

	.macro setCampaign_MapFinishEvent,CampaignID,EntryValue
	;Events script that runs upon returning to the World Map
	;Either Victory or Defeat
		.org Campaign_HeaderTable + (CampaignID)*0x30 + 24
		.dw	EntryValue
	.endmacro
	
	.macro setCampaign_COSelectPointer,CampaignID,EntryValue
	;Controls which COs appear in the listing for a CO Select Mission
		.org Campaign_HeaderTable + (CampaignID)*0x30 + 32
		.dw	EntryValue
	.endmacro

	.macro setCampaign_FactoryList,CampaignID,EntryValue
	;List of units that appear from the Black Factory every day
		.org Campaign_HeaderTable + (CampaignID)*0x30 + 36
		.dw	EntryValue
	.endmacro

	.macro setCampaign_HardFactoryList,CampaignID,EntryValue
	;As above, but for Hard Campaign Mode
		.org Campaign_HeaderTable + (CampaignID)*0x30 + 40
		.dw	EntryValue
	.endmacro

	.macro setCampaign_Defaults,CampaignID
		setCampaign_MapID		CampaignID,0x008a
		setCampaign_FlagType		CampaignID,0x00
		setCampaign_StarRating		CampaignID,1
		setCampaign_HardStarRating	CampaignID,1
		setCampaign_FlagPosition	CampaignID,55,175
		setCampaign_RecolourPointer	CampaignID,0x08614918
		setCampaign_MapDescText		CampaignID,0x000d
		setCampaign_Event		CampaignID,C00_Worldmap ;0x084bf800
		setCampaign_COSelectPointer	CampaignID,0x00000000
		setCampaign_FactoryList		CampaignID,0x00000000
		setCampaign_HardFactoryList	CampaignID,0x00000000
	.endmacro
