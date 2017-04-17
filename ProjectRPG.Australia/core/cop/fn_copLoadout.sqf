/*
	File: fn_copLoadout.sqf
	
	Edited: Itsyuka
	
	Description:
	Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default cop gear.
player addUniform "A3L_Sheriff_Uniform";
// Add shortrange radio
player addItem "tf_anprc152"; 
player assignItem "tf_anprc152";
player addBackpack "AM_PoliceBelt";
player addWeapon "Taser_26";
player addMagazine "26_cartridge";
player addMagazine "26_cartridge";
player addMagazine "26_cartridge";
player addMagazine "26_cartridge";
player addMagazine "26_cartridge";
player addMagazine "26_cartridge";
/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "tf_anprc152";
player assignItem "tf_anprc152";
player addItem "ItemGPS";
player assignItem "ItemGPS";
[] call life_fnc_saveGear;