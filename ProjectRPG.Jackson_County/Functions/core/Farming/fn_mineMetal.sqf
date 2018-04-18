/*
Refine Logs trees by koil
*/
private ["_myOre"];
_rock = cursorobject;
if((getposATL player) distance (getposATL _rock) > 25) exitwith {};
if (str _rock find "stone_small_w" > -1 && player distance [2260.54,9707.35,0.00168991] < 300) exitwith {
	if(_rock IN myoil) exitwith { ["W tym kamieniu nie ma już surowca!", true] spawn domsg; };
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
		["You found an oil deposit!", true] spawn domsg;
	};
};

if (str _rock find ": w_sharprock" > -1 || str _rock find ": bluntrock" > -1 ) exitwith {
	if(_rock IN mymetal) exitwith { ["W tym kamieniu nie ma już surowca!", true] spawn domsg;  };
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
	 _findchance = round(random 20);
	if(_findchance > 14) then {
		mymetal pushback _rock;
		 _myOre = "np_copperore1";
		 if(_findchance == 15 || _findchance == 16 || _findchance == 17) then { _myOre = "np_copperore1"; };
		 if(_findchance == 18 || _findchance == 19) then { _myOre = "np_ironore1"; };
		 if(_findchance == 20) then { _myOre = "np_silverore1"; };
		player additem _myOre;
		["You found some ore!", true] spawn domsg;
		["OreGathered"] spawn mav_ttm_fnc_addExp;
	};
};
