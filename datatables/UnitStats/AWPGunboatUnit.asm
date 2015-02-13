;NullCUnit.asm
;Null Unit C Stats
;This is the Unit Slot 12, Normally unavailable.


;Unit Name ID
	.dh 3317
	
;Primary Weapon Name ID
	.dh 2260
	
;Secondary Weapon Name ID	
	.dh 2266
	
;Unit Price for 1HP
	.dh 450
	
;Unknown
	.dh 0

;Movement
	.db 7
	
;Maximum Ammunition
	.db 4
	
;Vision Range
	.db 2
	
;Unknown
	.db 0
	
;Firing Range
	.db 1,1
	
;Maximum Fuel
	.db 99
	
;B-Button Range Display Type.
	.db BButtonDirect
	
;Unknown
	.dh 0
	
;Transport Ability
	.dw BooleanOff

;Unit Class
	.db ClassNaval
	
;Movement Class
	.db AWPMoveLightShip
	
;Facilities this unit can be built from
	.db BuildPort
	
;AI Unit AI
	.db AICaptureUnit

;AI Priority Attack Targeting
	.db AITargetSea

;AI Considers this a Unit of Type
	.db AITargetSea
	
;Unknown
	.db 0	
	
;Damage Chart (Primary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 0,0,0,0
;Tank, Train, APC, Neotank	
	.db 0,0,0,0
;Destroyer, Artillery, Rockets, Gunboat	
	.db 0,0,0,75
;Carrier, Antiair, Missile, Fighter	
	.db 40,0,0,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 40,40,55,40
;Dived Sub	
	.db 0	
	
;Unknown
	.db 0

;Damage Chart (Secondary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 0,0,0,0
;Tank, Train, APC, Neotank	
	.db 0,0,0,0
;Destroyer, Artillery, Rockets, Gunboat	
	.db 0,0,0,0
;Carrier, Antiair, Missile, Fighter	
	.db 0,0,0,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 0,0,0,0
;Dived Sub	
	.db 0	

;Padding
	.dh 00

;Unit is Supplied on This Terrain
	.dw SuppliedByPort
	
;Unit Uses Fuel on These Tiles
	.dw FuelUseageTypeSea
	
;Blank Line
