scriptName "functions_weapon_4";
/*--------------------------------------------------------------------
	Author: PRPG (ofpectag: MAV)
    File: functions_weapon_4.sqf

--------------------------------------------------------------------*/
#define __filename "functions_weapon_4.sqf"

_ownsDependency4 = [life_currentExpPerks, "functions_weapon_5"] call mav_ttm_fnc_hasPerk;

if (!_ownsDependency4) then {
	mav_ttm_var_weaponcrafting = 4;
};