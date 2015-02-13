;System and Menu Messages	
String3211:
	.ascii "   Yes     No",0x0
String3212:
	.ascii 0x0B,0x81,"Save current data?",TextNL,0x16
String3213:
	.ascii 0x0B,0x81,"Save current data",TextWait,TextWait,TextNL
	.ascii "over existing data?",0x16,0x0
String3214:
	.ascii 0x0B,0x80,"Now saving. Do not turn OFF.",TextWait,0x0
String3215:
	.ascii 0x0C,0x0B,"Save complete!",TextWait,TextWait,0x0
String3216:
	.ascii 0x0B,0x81,"Delete all saved data?",TextNL,TextYesNo,0x0
String3217:
	.ascii 0x0B,0x80,"Now deleting data.",TextNL
	.ascii "Do not turn OFF.",TextWait,0x0
String3218:
	.ascii 0x0C,0x0B,0x80,"Data has been deleted!",TextConfirm,0x0
String3219:
	.ascii "If you yield, you lose.",TextNL
	.ascii "Do you really yield?",TextWait,TextYesNo,0x0
String3220:
	.ascii "Return to Select Mode menu?",TextNL,TextYesNo,0x0
String3221:
	.ascii "The Orange Star Army has lost!",TextWait,TextWait,0x0
String3222:
	.ascii "The Blue Moon Army has lost!",TextWait,TextWait,0x0
String3223:
	.ascii "The Green Earth Army has lost!",TextWait,TextWait,0x0
String3224:
	.ascii "The Yellow Comet Army has lost!",TextWait,TextWait,0x0
String3225:
	.ascii "The Black Hole Army has lost!",TextWait,TextWait,0x0
String3226:
	.ascii "View battle and",TextNL
	.ascii "capture animation.",0x0
String3227:
	.ascii "View battle",TextNL
	.ascii "animation only.",0x0
String3228:
	.ascii "View player battle",TextNL
	.ascii "animation only.",0x0
String3229:
	.ascii "No animation",0x0
String3230:
	.ascii "You have 50 units deployed.",TextNL
	.ascii "You cannot produce any more units.",TextConfirm,0x0
String3231:
	.ascii "Select missile target now.",TextConfirm,0x0
String3232:
	.ascii "If you save a new game, your",TextNL
	.ascii "previous data will be overwritten.",TextConfirm,0x0
String3233:
	.ascii "Name your map, please.",TextConfirm,0x0
String3234:
	.ascii "Is this correct?",TextNL,0x16,0x0
String3235:
	.ascii "Are you really going to quit?",TextNL,0x16,0x0
;blankline	
