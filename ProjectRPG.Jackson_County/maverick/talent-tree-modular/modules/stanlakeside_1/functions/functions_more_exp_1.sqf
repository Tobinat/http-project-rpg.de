scriptName "functions_more_exp_1";
/*--------------------------------------------------------------------
	Author: Katekarin (ofpectag: MAV)
    File: functions_more_exp_1.sqf

--------------------------------------------------------------------*/
#define __filename "functions_more_exp_1.sqf"

_ownsDependency1 = [life_currentExpPerks, "perk_more_exp_2"] call mav_ttm_fnc_hasPerk;
_ownsDependency2 = [life_currentExpPerks, "perk_more_exp_3"] call mav_ttm_fnc_hasPerk;

if (!_ownsDependency1 && !_ownsDependency2) then {
	mav_ttm_var_bonusExp = 1;
};