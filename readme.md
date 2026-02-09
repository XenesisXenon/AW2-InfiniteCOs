# Infinite COs Project for Advance Wars 2: Black Hole Rising

This is a massive expansion and partial disassembly/reimplementation project of Advance Wars 2. It provides a lot of expanded functionality and content.

## Compilation
This project is maintained and built using [ARMIPS](https://github.com/Kingcom/armips).

The default compilation assumes an original AW2 ROM named ```aw2-original.gba``` with the CRC32 of ```5AD0E571``` Advance Wars 2: Black Hole Rising (U)
Compile with ```armips compile.asm```

The patch for the current build can be found in the _Patch/ folder

## Features
Current Feature List:
- Additional Commanding Officers (AW, AWDS, SFW, Custom)
- Additional Maps (AW, AWDS, AWDoR, Custom, War Room Challenge 2012)
- Skills System Implementation (AWDS)
- Tower Terrain Implementation (AWDS)
- Gameplay Optional Tweak Modes
- Expanded UI functionality and stat tracking
- Bug-Fixes of orginal game issues

## Functionality Expansion
### Quick Game Start
You can press A to skip the intro animation and go straight to the Title Screen from the first frame keypad input is available, compared to several seconds as previously.
### Skills System from Advance Wars: Dual Strike
Includes all skills included in AWDS, which all function.
### Support for the Advance Wars: Days of Ruin map format
Imports and implements AWDoR tile metadata so that the maps perform correctly when loaded.
### Damage to Black Hole Inventions:
This is now an individual entry in the unit data and doesn't read the damage Vs. a Medium Tank.
### Paralyse Status
For functionality with Von Bolt's Super Power, a function that manages disabling units afflicted with this status
### Transports Launching Units
Allows for the capability to launch units (disembark from transports without setting wait mode) optionally, similar to the Days of Ruin Carrier unit.
### Allow Difficulty Toggle for Vs. Mode game modes
This allows for the ability to select whether to play the Normal or Hard version of a map in Versus mode, which also fixes some game bugs when trying to play Hard maps outside of Campaign mode.
### Expanded Menu Options In-Game
- Includes an improved version of one of my previous mods, "Design Maps Jukebox"
- Includes expanded menu commands to support additional features as contextually appropriate.
### Additional CO Support
Allows for more COs to be included over the previous hard caps.
### Additional Terrain and Invention Support
Allows for more terrain tile types, as well as inventions. Achieved by combining several terrain types used for BH invention facing into a single terrain ID entry.
### Additional Map Support
Game supports maps over the previous capacity (limited to 190 map headers, previously) now to a maximum of 65535 maps.
### VS Mode UI Updates
- Map Selection box has been widened allowing for longer names
- Map Selection position indicator no longer disappears when more than ~30 maps are in a map case
- Game Rules now default to:
###### Fog of War: Off
###### Weather: Clear
### In Game UI Updates
- Ability to see the calculated damage range (turn on/off in options with Animation C/Off or A/B)
- Ability to see exact unit HP (Support for a Custom CO)
- Ability to see paralysed status on a unit
- CO Dossier shows defence values and has an extra stat page of information for Skills.
### Gameplay Tweaks and Options
- Access Battle Maps while holding L+R to show a variety of tweaks for Vs. and Campaign Mode
###### CO Power Charging Modes: 
- Enable powers to charge using the mechanics of Advance Wars, Advance Wars 2 (Default) or Dual Strike
###### Turn Timer: 
- Enable a short turn timer that automatically ends a player's turn if it is exceeded.
###### CO Lists: 
- Pick from lists of COs, restricting the Vs. mode selection to that set.
###### Campaign CO Selection: 
- Enable/Disable the ability to pick any CO for playing a campaign map.
###### Campaign Skills Selection: 
- Enable/Disable the use of Skills in the Campaign. Applies to both the player and opponent.
###### Campaign Skip Tutorial: 
- If Enabled, starts a new Campaign on the "alt" Orange Star missions used in the HC.
###### Debug Mode: 
- Enable/Disable a debug menu used for testing during gameplay, labelled "Xen Debug"
###### Full Unlock: 
- Sets all the game flags to have all standard AW2 content unlocked and purchased.

## Bug Fixes
### Fix for Hachi's Super CO Power:
- This fixes two issues here. The first is that the AI would fail to use the ability to build units from allied cities. The second is that the build cursor would not appear for a human player during a Super CO Power activation of Hachi's. Both are fixed.
### Null Tile Terrain Info:
- Fixes a multitude of crashes and display issues for maps that have null tiles (Terrain ID 0). Will now correctly just resolve as just a null tile.
### VS Mode UI
- Fixes instances of graphics corruption when too many maps are in a map case.
### CO Dossier
- Fixed the game using an appended list of Text IDs, rather than the ones specified in the CO data
### Indirect Classification
- Adjusted the game to apply the "Indirect Unit" flag to a unit that was by using the class data, rather than just using the units' minimum range.
