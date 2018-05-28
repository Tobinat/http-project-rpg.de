//Autocrafting
class perk_autocraft_1 {
	displayName = "Autocrafting I";
	requiredPerkPoints = 2;
	requiredLevel = 3;
	requiredPerk = "";
	subtitle = "Erforderliche Stufe 3, 2 Pkt. nötig.";
	description = "Erlerne die Herstellung einfacher Fahrzeuge.";
	initScript = "maverick\talent-tree-modular\modules\prpg_1\functions\functions_craftcar_1.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_autocraft_2 {
	displayName = "Autocrafting II";
	requiredPerkPoints = 3;
	requiredLevel = 5;
	requiredPerk = "perk_autocraft_1";
	subtitle = "Erforderliche Stufe 5, 3 Pkt. nötig.";
	description = "Erlerne die Herstellung weiterer Fahrzeuge";
	initScript = "maverick\talent-tree-modular\modules\prpg_1\functions\functions_craftcar_2.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_autocraft_3 {
	displayName = "Autocrafting III";
	requiredPerkPoints = 4;
	requiredLevel = 9;
	requiredPerk = "perk_autocraft_2";
	subtitle = "Erforderliche Stufe 9, 4 Pkt. nötig.";
	description = "Erlerne die Herstellung weiterer Fahrzeuge";
	initScript = "maverick\talent-tree-modular\modules\prpg_1\functions\functions_craftcar_3.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_autocraft_4 {
	displayName = "Autocrafting IV";
	requiredPerkPoints = 5;
	requiredLevel = 15;
	requiredPerk = "perk_autocraft_3";
	subtitle = "Erforderliche Stufe 15, 5 Pkt. nötig.";
	description = "Erlerne die Herstellung weiterer Fahrzeuge";
	initScript = "maverick\talent-tree-modular\modules\prpg_1\functions\functions_craftcar_4.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_autocraft_5 {
	displayName = "Autocrafting V";
	requiredPerkPoints = 10;
	requiredLevel = 22;
	requiredPerk = "perk_autocraft_4";
	subtitle = "Erforderliche Stufe 22, 10 Pkt. nötig.";
	description = "Erlerne die Herstellung weiterer Fahrzeuge";
	initScript = "maverick\talent-tree-modular\modules\prpg_1\functions\functions_craftcar_5.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};