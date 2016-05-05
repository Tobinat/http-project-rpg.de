#include <macro.h>
/*
	File: fn_sert.sqf
	
	
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

player forceAddUniform "TRYK_U_B_BLK";
player addVest "kaelvest_sert2_Fix";
player addBackpack "AM_PoliceBelt";
player addGoggles "TRYK_kio_balaclava_ESS";
player addHeadgear "TRYK_H_PASGT_BLK";
player addWeapon "Rangefinder";
player addWeapon "RH_fn57";
player addHandgunItem "RH_sfn57";
for "_i" from 1 to 5 do {player addItemToUniform "RH_20Rnd_57x28_FN";};
for "_i" from 1 to 5 do {player addItemToBackpack "HandGrenade_Stone";};

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_anprc152_5";
player linkItem "ItemGPS";
player linkItem "TRYK_SPgear_PHC1_NV";

["Sie besitzen nun die Grundausrüstung! Besorgen Sie sich eine Waffe, Jungchen!", false] spawn doquickmsg;