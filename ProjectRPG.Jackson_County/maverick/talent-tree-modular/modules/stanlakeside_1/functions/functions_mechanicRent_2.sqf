scriptName "functions_mechanicRent_2";
/*--------------------------------------------------------------------
	Author: Katekarin (ofpectag: MAV)
    File: functions_mechanicRent_2.sqf

--------------------------------------------------------------------*/
#define __filename "functions_mechanicRent_2.sqf"

_ownsDependency2 = [life_currentExpPerks, "perk_mechanic_lowerprice_3"] call mav_ttm_fnc_hasPerk;

if (!_ownsDependency2) then {
	mav_ttm_var_mechanicRent = 0.85;
};