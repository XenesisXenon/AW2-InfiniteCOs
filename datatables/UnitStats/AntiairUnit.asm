;AntiairUnit.asm
;Anti-Air Stats


;Unit Name ID
	.dh 2243
	
;Primary Weapon Name ID
	.dh 2257
	
;Secondary Weapon Name ID	
	.dh 2266
	
;Unit Price for 1HP
	.dh 800
	
;Unknown
	.dh 10

;Movement
	.db 6
	
;Maximum Ammunition
	.db 9
	
;Vision Range
	.db 2
	
;Unknown
	.db 2
	
;Firing Range
	.db 1,1
	
;Maximum Fuel
	.db 60
	
;B-Button Range Display Type.
	.db BButtonDirect
	
;Unknown
	.dh 4
	
;Transport Ability
	.dw BooleanOff

;Unit Class
	.db ClassVehicle
	
;Movement Class
	.db MoveTread
	
;Facilities this unit can be built from
	.db BuildBase
	
;AI Unit AI
	.db AIDirectCombat

;AI Priority Attack Targeting
	.db AITargetGround+AITargetAir

;AI Considers this a Unit of Type
	.db AITargetGround

;Unknown
	.db 0
	
;Damage Chart (Primary Weapon)
;Infantry, Mech, Medium Tank, UID4
	.db 105,105,10,00
;Tank, Recon, APC, Neotank	
	.db 25,60,50,5
;UID9, Artillery, Rockets, UIDC	
	.db 0,50,55,0
;UIDD, Antiair, Missile, Fighter	
	.db 0,45,55,65
;Bomber, UID12, B-Copter, T-Copter	
	.db 75,0,120,120
;Battleship, Cruiser, Lander, Sub	
	.db 00,00,00,00
;Dived Sub	
	.db 00	

;Unknown	
	.db 00	
	
;Damage Chart (Secondary Weapon)
;Infantry, Mech, Medium Tank, UID4
	.db 0,0,0,0
;Tank, Recon, APC, Neotank	
	.db 0,0,0,0
;UID9, Artillery, Rockets, UIDC	
	.db 0,0,0,0
;UIDD, Antiair, Missile, Fighter	
	.db 0,0,0,0
;Bomber, UID12, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 0,0,0,0
;Dived Sub	
	.db 0

;Padding
	.dh 00

;Unit is Supplied on This Terrain
	.dw SuppliedByBase
	
;Unit Uses Fuel on These Tiles
	.dw FuelUseageTypeGround
	
;Blank Line
