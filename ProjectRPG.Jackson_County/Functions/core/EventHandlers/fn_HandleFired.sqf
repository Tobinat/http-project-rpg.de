/*
	handle fired
*/

params ["_unit","","","","_ammo","_magazine","_projectile"];

if(_magazine isEqualTo "RPG32_F" || _magazine isEqualTo "RPG32_HE_F") then { [_projectile] spawn client_fnc_sendHook; };

if(_ammo isEqualTo "SmokeShellYellow") exitwith {
	[_projectile] spawn {
		params ["_projectile"];
		waitUntil{uiSleep 1; speed _projectile < 0.2};
		_enemies = _projectile nearEntities ["Man", 50];
		_nonUnits = [];
		{if(!isPlayer _x) then {_nonUnits pushBack _x}} forEach _enemies;
		_enemies = _enemies - _nonUnits;
		_projectile remoteExec ["client_fnc_teargas",_enemies];
	};
};

if(_ammo isKindOf "Melee") exitwith {
	_cfg = (configFile>>"CfgAmmo">>_ammo>>"Melee");
	_anim = getText(_cfg>>"anim");
	_unit playActionNow _anim;

	if(currentWeapon _unit == "cg_pickaxe") then {
		[] call client_fnc_mineMetal;
	 };

	if(currentWeapon _unit == "cg_hatchet") then {
		[] call client_fnc_cutTree;
	 };

	if(currentWeapon _unit == "cg_bat" && typeof cursorobject IN ["Land_buildingCommercial1","Land_buildingCommercial2"] && player distance getpos cursorobject < 3 && myjob != "Security") then {
		[cursorobject] spawn client_fnc_BATrobbery;
	 };

};

if(currentWeapon _unit IN ["vvv_fishing_rod","epic_fishing_rod","platinum_fishing_rod","legendary_fishing_rod","gold_fishing_rod"]) exitwith {
	[] spawn client_fnc_poleFishing;
};

//if(vehicle player == player) then {
//	[] call client_fnc_forceFPS;
//};
