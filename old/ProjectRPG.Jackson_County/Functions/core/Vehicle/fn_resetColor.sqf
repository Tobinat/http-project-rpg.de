spawnedVehicle = CurrentCursorTarget;
_classname = typeOf spawnedvehicle;
_information = spawnedVehicle getVariable ["information", 0];

_license = _information select 0;
_color = _information select 2;
_finish = _information select 3;
_rims = _information select 4;
_windows = _information select 5;
_lights = _information select 6; 

if (str _classname find "vory_" > -1 || str _className find "vv_" > -1 || str _className find "adilac_" > -1) then {
	[spawnedVehicle, [_color,_finish], _rims, _windows, _lights] call client_fnc_IvoryInitVehicle;
};
if (str _classname find "onzie_" > -1 || str _className find "adm_" > -1  || str _className find "ADM_" > -1 || str _className find "opixel_" > -1) then {
	[spawnedVehicle, [_color,_finish]] remoteexec ["client_fnc_initVehicle",2];
};