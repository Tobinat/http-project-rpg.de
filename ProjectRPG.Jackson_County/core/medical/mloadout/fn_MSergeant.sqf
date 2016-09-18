#include <macro.h>
/*
	File: fn_MSergeant.sqf
	
	
	Description:
	
*/
removeAllWeapons player;
removeAllItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

player forceAddUniform "pRPG_Candidate1";
player addBackpack "cg_invisbp";
player addGoggles "Masque_Chirurgical";
for "_i" from 1 to 1 do {player addItemToUniform "ACE_EarPlugs";};
for "_i" from 1 to 1 do {player addItemToUniform "ACE_Flashlight_XL50";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_bodyBag";};
for "_i" from 1 to 50 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 50 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 25 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 25 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_atropine";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_surgicalKit";};
for "_i" from 1 to 1 do {player addItemToUniform "ACE_personalAidKit";};
for "_i" from 1 to 1 do {player addItemToBackpack "ToolKit";};

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemGPS";
player linkItem "TRYK_Headset_NV";

["Sie besitzen nun die Grundausrüstung!", false] spawn doquickmsg;

if(cash_in_bank > 500) then {
	["bank","take",500] call life_fnc_handleCash;
};