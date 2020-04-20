/*
Refine Logs trees by koil
*/
private ["_myOre"];
_rock = cursorobject;
if((getposATL player) distance (getposATL _rock) > 25) exitwith {};
/*
if (str _rock find "stone_small_w" > -1 && player distance [2260.54,9707.35,0.00168991] < 300) exitwith {
	if(_rock IN myoil) exitwith { ["Es gibt keinen Rohstoff mehr in diesem Stein.", true] spawn domsg; };
	_sound = round(random 5);
	switch(_sound) do {
		case 0: {
			playSound3D ["CG_Jobs\sounds\mining\mine1.ogg", player, false, getPosasl player, 3, 1, 15];
		};
		case 1: {
			playSound3D ["CG_Jobs\sounds\mining\mine2.ogg", player, false, getPosasl player, 3, 1, 15];
		};
		case 2: {
			playSound3D ["CG_Jobs\sounds\mining\mine5.ogg", player, false, getPosasl player, 3, 1, 15];
		};
		case 3: {
			playSound3D ["CG_Jobs\sounds\mining\mine2.ogg", player, false, getPosasl player, 3, 1, 15];
		};
		case 4: {
			playSound3D ["CG_Jobs\sounds\mining\mine5.ogg", player, false, getPosasl player, 3, 1, 15];
		};
		default {
			playSound3D ["CG_Jobs\sounds\mining\mine1.ogg", player, false, getPosasl player, 3, 1, 15];
		};
	};
	 _CutChance = round(random 10);
	if(_CutChance > 4) then {
		myoil pushback _rock;
	};
	if(_CutChance > 8) then {
		player additem "CG_OilBarrel";
		["Du hast ein Ölvorkommen gefunden.", true] spawn domsg;
	};
};
*/

if (str _rock find "rock" > -1 || str _rock find "stone" > -1 ) exitwith {
	//if(_rock IN mymetal) exitwith { ["Es gibt kein Rohmaterial mehr in diesem Stein", true] spawn domsg;  };
	_sound = round(random 5);
	switch(_sound) do {
		case 0: {
			playSound3D ["CG_Jobs\sounds\mining\mine1.ogg", player, false, getPosasl player, 3, 1, 15];
		};
		case 1: {
			playSound3D ["CG_Jobs\sounds\mining\mine2.ogg", player, false, getPosasl player, 3, 1, 15];
		};
		case 2: {
			playSound3D ["CG_Jobs\sounds\mining\mine5.ogg", player, false, getPosasl player, 3, 1, 15];
		};
		case 3: {
			playSound3D ["CG_Jobs\sounds\mining\mine2.ogg", player, false, getPosasl player, 3, 1, 15];
		};
		case 4: {
			playSound3D ["CG_Jobs\sounds\mining\mine5.ogg", player, false, getPosasl player, 3, 1, 15];
		};
		default {
			playSound3D ["CG_Jobs\sounds\mining\mine1.ogg", player, false, getPosasl player, 3, 1, 15];
		};
	};
	_findchance = round(random 24);
	if(_findchance > 14) then {
		//mymetal pushback _rock;
		_myOre = "prpg_item_kupfer_ore";
		if(_findchance == 15) then { _myOre = "prpg_item_blei_ore"; };
		if(_findchance == 16) then { _myOre = "prpg_item_schwefel_ore"; };
		if(_findchance == 17 || _findchance == 18) then { _myOre = "prpg_item_aluminium_ore"; };
		if(_findchance == 19 || _findchance == 20 || _findchance == 21) then { _myOre = "prpg_item_kupfer_ore"; };
		if(_findchance == 22 || _findchance == 23) then { _myOre = "prpg_item_eisen_ore"; };
		if(_findchance == 24) then { _myOre = "prpg_item_silber_ore"; };
		player additem _myOre;
		["Du hast etwas Erz gefunden", true] spawn domsg;
		["OreGathered"] spawn mav_ttm_fnc_addExp;
	};
};
