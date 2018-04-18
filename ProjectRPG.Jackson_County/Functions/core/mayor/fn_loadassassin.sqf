_cashCheck = [1,50000] call Client_fnc_sl_checkMoney_secure;

if!(_cashCheck) exitwith { hint "Za mało pieniędzy!"; };

hint "Kupiłeś ekwipunek zabójcy - musisz go użyć w prawidłowym scenariuszu RP.";

removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

//comment "Add containers";
player forceAddUniform "U_C_Poloshirt_stripped";
player addVest "CUP_V_RUS_6B3_2";
for "_i" from 1 to 10 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {player addItemToVest "APERSTripMine_Wire_Mag";};
player addBackpack "CUP_B_HikingPack_Civ";
for "_i" from 1 to 5 do {player addItemToBackpack "CUP_10Rnd_127x99_M107";};
for "_i" from 1 to 4 do {player addItemToBackpack "CUP_PG7V_M";};
player addHeadgear "H_Booniehat_khk_hs";
player addGoggles "G_Balaclava_oli";

//comment "Add weapons";
player addWeapon "CUP_srifle_M107_Base";
player addPrimaryWeaponItem "CUP_optic_LeupoldM3LR";
player addWeapon "CUP_launch_RPG7V";
player addSecondaryWeaponItem "CUP_acc_rpg7_zero_300";
player addSecondaryWeaponItem "CUP_optic_NSPU_RPG";

//comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "Itemwatch";

[50000] call Client_fnc_sl_removeCash_secure;



