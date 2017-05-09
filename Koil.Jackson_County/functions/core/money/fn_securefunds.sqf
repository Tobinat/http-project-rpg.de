_units = nearestObjects [player, ["plp_ct_HighSecMediumBlack"], 30];
if(count _units == 0) exitwith {};
deletevehicle (_units select 0);

_cashadded = 2000 + (count currentcop * 1200);

[_cashadded] call Client_fnc_addCash;

hint format["You secured the cash and were paid %1.",_cashadded];

