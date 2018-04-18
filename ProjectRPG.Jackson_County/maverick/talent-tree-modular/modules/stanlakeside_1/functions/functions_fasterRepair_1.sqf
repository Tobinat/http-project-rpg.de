scriptName "functions_fasterRepair_1";
/*--------------------------------------------------------------------
	Author: Katekarin (ofpectag: MAV)
    File: functions_fasterRepair_1.sqf

--------------------------------------------------------------------*/
#define __filename "functions_fasterRepair_1.sqf"

_ownsDependency1 = [life_currentExpPerks, "perk_mechanic_fasterrepair_2"] call mav_ttm_fnc_hasPerk;
_ownsDependency2 = [life_currentExpPerks, "perk_mechanic_fasterrepair_3"] call mav_ttm_fnc_hasPerk;
_ownsDependency3 = [life_currentExpPerks, "perk_mechanic_fasterrepair_4"] call mav_ttm_fnc_hasPerk;
_ownsDependency4 = [life_currentExpPerks, "perk_mechanic_lowerprice_2"] call mav_ttm_fnc_hasPerk;
_ownsDependency5 = [life_currentExpPerks, "perk_mechanic_lowerprice_3"] call mav_ttm_fnc_hasPerk;

if (!_ownsDependency1 && !_ownsDependency2 && !_ownsDependency3) then {
	mav_ttm_var_repairToReduce = 5;
};

if (!_ownsDependency4 && !_ownsDependency5) then {
	mav_ttm_var_mechanicRent = 0.95;
};