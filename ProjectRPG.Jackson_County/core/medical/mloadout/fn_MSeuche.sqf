#include <macro.h>
/*
	File: fn_MSeuche.sqf
	
	
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

player forceAddUniform "vvv_hazmat";
player addBackpack "cg_invisbp";
for "_i" from 1 to 1 do {player addItemToUniform "ACE_EarPlugs";};
for "_i" from 1 to 1 do {player addItemToUniform "ACE_Flashlight_XL50";};

for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_tourniquet";};

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";
player linkItem "TRYK_Headset_NV";

["Sie besitzen nun die Seuchenschutzausrüstung!", false] spawn doquickmsg;

if(cash_in_bank > 500) then {
	["bank","take",500] call life_fnc_handleCash;
};