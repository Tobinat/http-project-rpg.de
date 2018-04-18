scriptName "functions_fasterRepair_2";
/*--------------------------------------------------------------------
	Author: Katekarin (ofpectag: MAV)
    File: functions_fasterRepair_2.sqf

--------------------------------------------------------------------*/
#define __filename "functions_fasterRepair_2.sqf"

_ownsDependency2 = [life_currentExpPerks, "perk_mechanic_fasterrepair_3"] call mav_ttm_fnc_hasPerk;
_ownsDependency3 = [life_currentExpPerks, "perk_mechanic_fasterrepair_4"] call mav_ttm_fnc_hasPerk;

if (!_ownsDependency2 && !_ownsDependency3) then {
	mav_ttm_var_repairToReduce = 10;
};