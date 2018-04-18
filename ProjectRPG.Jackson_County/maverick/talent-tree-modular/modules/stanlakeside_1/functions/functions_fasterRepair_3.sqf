scriptName "functions_fasterRepair_3";
/*--------------------------------------------------------------------
	Author: Katekarin (ofpectag: MAV)
    File: functions_fasterRepair_3.sqf

--------------------------------------------------------------------*/
#define __filename "functions_fasterRepair_3.sqf"

_ownsDependency3 = [life_currentExpPerks, "perk_mechanic_fasterrepair_4"] call mav_ttm_fnc_hasPerk;

if (!_ownsDependency3) then {
	mav_ttm_var_repairToReduce = 15;
};