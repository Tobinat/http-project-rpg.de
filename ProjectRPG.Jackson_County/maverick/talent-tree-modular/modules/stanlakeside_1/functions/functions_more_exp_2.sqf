scriptName "functions_more_exp_2";
/*--------------------------------------------------------------------
	Author: Katekarin (ofpectag: MAV)
    File: functions_more_exp_2.sqf

--------------------------------------------------------------------*/
#define __filename "functions_more_exp_2.sqf"

_ownsDependency2 = [life_currentExpPerks, "perk_more_exp_3"] call mav_ttm_fnc_hasPerk;

if (!_ownsDependency2) then {
	mav_ttm_var_bonusExp = 2;
};