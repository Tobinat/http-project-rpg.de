#include <macro.h>
/*
	File: fn_Captain.sqf
	
	
	Description:
	
*/
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

player forceAddUniform "silver_lake_fbi";
player addVest "DOC_Vest_CO";
player addBackpack "AM_PoliceBelt";
player addHeadgear "AM_Headgear";
player addWeapon "Taser_26";
player addHandgunItem "Taser_26";
for "_i" from 1 to 5 do {player addItemToUniform "26_cartridge";};
for "_i" from 1 to 1 do {player addItemToBackpack "Radar_Gun";};
for "_i" from 1 to 1 do {player addItemToBackpack "Rangefinder";};

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_anprc148jem_5";
player linkItem "ItemGPS";
player linkItem "BH_ImpNVChip";
player linkItem "ItemCopCard";

["Sie besitzen nun die Grundausrüstung! Ey Captain, wie läufts im PD? Schau zu, dass da alles Rund läuft!", false] spawn doquickmsg;