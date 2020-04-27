scriptName "functions_craftcar_3";
/*--------------------------------------------------------------------
	Author: PRPG (ofpectag: MAV)
    File: functions_craftcar_3.sqf

--------------------------------------------------------------------*/
#define __filename "functions_craftcar_3.sqf"

_ownsDependency3 = [life_currentExpPerks, "functions_craftcar_4"] call mav_ttm_fnc_hasPerk;
_ownsDependency4 = [life_currentExpPerks, "functions_craftcar_5"] call mav_ttm_fnc_hasPerk;

if (!_ownsDependency3 && !_ownsDependency4) then {
	mav_ttm_var_autocrafting = 3;
};