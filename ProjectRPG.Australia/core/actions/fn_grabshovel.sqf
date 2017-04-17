/*
Search Words: 
grab shovel
grabshovel
yard work
*/

if (!life_is_arrested) exitwith {
	["You cant grab this item", false] spawn domsg;
};

if ((currentWeapon player) != "A3L_Shovel") then {
	player addWeapon "A3L_Shovel";
	["You Grabbed a Shovel", false] spawn domsg;
};