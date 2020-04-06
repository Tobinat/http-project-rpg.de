scriptName "functions_mechanicRent_1";
/*--------------------------------------------------------------------
	Author: Katekarin (ofpectag: MAV)
    File: functions_mechanicRent_1.sqf

--------------------------------------------------------------------*/
#define __filename "functions_mechanicRent_1.sqf"

_ownsDependency1 = [life_currentExpPerks, "perk_mechanic_lowerprice_2"] call mav_ttm_fnc_hasPerk;
_ownsDependency2 = [life_currentExpPerks, "perk_mechanic_lowerprice_3"] call mav_ttm_fnc_hasPerk;

if (!_ownsDependency1 && !_ownsDependency2) then {
	mav_ttm_var_mechanicRent = 0.9;
};