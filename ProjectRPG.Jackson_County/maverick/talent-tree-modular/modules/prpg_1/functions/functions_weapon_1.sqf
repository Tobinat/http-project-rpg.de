scriptName "functions_weapon_1";
/*--------------------------------------------------------------------
	Author: PRPG (ofpectag: MAV)
    File: functions_weapon_1.sqf

--------------------------------------------------------------------*/
#define __filename "functions_weapon_1.sqf"

_ownsDependency1 = [life_currentExpPerks, "functions_weapon_2"] call mav_ttm_fnc_hasPerk;
_ownsDependency2 = [life_currentExpPerks, "functions_weapon_3"] call mav_ttm_fnc_hasPerk;
_ownsDependency3 = [life_currentExpPerks, "functions_weapon_4"] call mav_ttm_fnc_hasPerk;
_ownsDependency4 = [life_currentExpPerks, "functions_weapon_5"] call mav_ttm_fnc_hasPerk;

if (!_ownsDependency1 && !_ownsDependency2 && !_ownsDependency3 && !_ownsDependency4) then {
	mav_ttm_var_weaponcrafting = 1;
};