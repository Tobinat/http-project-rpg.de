_cashCheck = [1,50000] call client_fnc_checkmoney;

if!(_cashCheck) exitwith { hint "You dont have enough money on you to pay for this!"; };

hint "You have bought an assassin set - you must use this in a proper RP scenario.";

removeAllWeapons player;removeAllItems player;removeAllAssignedItems player;removeVest player;removeBackpack player;removeHeadgear player;removeGoggles player;
for "_i" from 1 to 2 do {player addItemToUniform "CUP_10Rnd_127x99_M107";};
	player addVest "CUP_V_RUS_6B3_2";
for "_i" from 1 to 10 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {player addItemToVest "APERSTripMine_Wire_Mag";};
player addBackpack "CUP_B_HikingPack_Civ";
for "_i" from 1 to 5 do {player addItemToBackpack "CUP_10Rnd_127x99_M107";};
for "_i" from 1 to 5 do {player addItemToBackpack "CUP_optic_NSPU_RPG";};
player addHeadgear "H_Booniehat_khk_hs";
player addGoggles "G_Balaclava_oli";
player addWeapon "CUP_srifle_M107_Base";
player addPrimaryWeaponItem "CUP_optic_LeupoldM3LR";
player addWeapon "CUP_launch_RPG7V";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "Itemwatch";

[50000] call client_fnc_removecash;



