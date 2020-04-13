/*
Cutting down trees by koil
*/

if(isNil "totalLogs") then { totallogs = 0; };
_tree = cursorobject;
if (str _tree find ": t_" > -1) then {
	if(_tree IN mytrees) exitwith { ["Such dir einen anderen Baum!", true] spawn domsg; };
	_sound = round(random 5);
	switch(_sound) do {
		case 0: {
			playSound3D ["CG_Jobs\sounds\woodchop\woodchop1.ogg", player, false, getPosasl _tree, 3, 1, 45];
		};
		case 1: {
			playSound3D ["CG_Jobs\sounds\woodchop\woodchop2.ogg", player, false, getPosasl _tree, 3, 1, 45];
		};
		case 2: {
			playSound3D ["CG_Jobs\sounds\woodchop\woodchop3.ogg", player, false, getPosasl _tree, 3, 1, 45];
		};
		case 3: {
			playSound3D ["CG_Jobs\sounds\woodchop\woodchop4.ogg", player, false, getPosasl _tree, 3, 1, 45];
		};
		case 4: {
			playSound3D ["CG_Jobs\sounds\woodchop\woodchop5.ogg", player, false, getPosasl _tree, 3, 1, 45];
		};
		default {
			playSound3D ["CG_Jobs\sounds\woodchop\woodchop1.ogg", player, false, getPosasl _tree, 3, 1, 45];
		};
	};
	 _treeCutChance = round(random 5);
	 if(_treeCutChance > 4) then {
		mytrees pushback _tree;
		if(!isnil "vehspawned") then {
			[] call client_fnc_packLogs;
			["TreeCutDown"] spawn mav_ttm_fnc_addExp;
		} else {
			["Fehler","Wo ist dein LKW?",[255,0,0,1],""] call Client_fnc_showNotification;
			//hint "Du brauchst die Holzfaeller Lizenz";
		};
	};
};