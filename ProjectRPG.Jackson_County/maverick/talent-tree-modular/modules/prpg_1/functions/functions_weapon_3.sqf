scriptName "functions_weapon_3";
/*--------------------------------------------------------------------
	Author: Katekarin (ofpectag: MAV)
    File: functions_weapon_3.sqf

--------------------------------------------------------------------*/
#define __filename "functions_weapon_3.sqf"

_ownsDependency3 = [life_currentExpPerks, "functions_weapon_4"] call mav_ttm_fnc_hasPerk;
_ownsDependency4 = [life_currentExpPerks, "functions_weapon_5"] call mav_ttm_fnc_hasPerk;

if (!_ownsDependency3 && !_ownsDependency4) then {
	mav_ttm_var_weaponcrafting = 3;
};