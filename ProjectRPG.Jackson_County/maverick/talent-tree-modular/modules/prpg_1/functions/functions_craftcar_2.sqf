scriptName "functions_craftcar_2";
/*--------------------------------------------------------------------
	Author: Katekarin (ofpectag: MAV)
    File: functions_craftcar_2.sqf

--------------------------------------------------------------------*/
#define __filename "functions_craftcar_2.sqf"

_ownsDependency2 = [life_currentExpPerks, "functions_craftcar_3"] call mav_ttm_fnc_hasPerk;
_ownsDependency3 = [life_currentExpPerks, "functions_craftcar_4"] call mav_ttm_fnc_hasPerk;
_ownsDependency4 = [life_currentExpPerks, "functions_craftcar_5"] call mav_ttm_fnc_hasPerk;

if (!_ownsDependency2 && !_ownsDependency3 && !_ownsDependency4) then {
	mav_ttm_var_autocrafting = 2;
};