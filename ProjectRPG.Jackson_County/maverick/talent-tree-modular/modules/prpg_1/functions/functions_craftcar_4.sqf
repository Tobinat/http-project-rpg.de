scriptName "functions_craftcar_4";
/*--------------------------------------------------------------------
	Author: Katekarin (ofpectag: MAV)
    File: functions_craftcar_4.sqf

--------------------------------------------------------------------*/
#define __filename "functions_craftcar_4.sqf"

_ownsDependency4 = [life_currentExpPerks, "functions_craftcar_5"] call mav_ttm_fnc_hasPerk;

if (!_ownsDependency4) then {
	mav_ttm_var_autocrafting = 4;
};