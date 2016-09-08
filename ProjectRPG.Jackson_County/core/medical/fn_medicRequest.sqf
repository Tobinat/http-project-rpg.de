/*
	File: fn_medicRequest.sqf
	
	
	Description:
	Notifies the medics that someone has requested emergency and prompts them
	if they want to take the request or not.
*/

params [["_caller", objNull, [objNull]], ["_callerName", "Unknown Player", [""]]];

if(isNull _caller) exitWith {}; //Bad data

if(side _caller isEqualTo civilian || side _caller isEqualTo east) then {
	["mdciv", false] remoteExec ["fnc_dispatch",independent];
} else {
	["mdofficer", false] remoteExec ["fnc_dispatch",independent];	
};
//_caller setVariable["mapVisible",true,true];

_caller = createMarkerLocal [format["%1_dead_marker",_x],visiblePosition _x];
_caller setMarkerColorLocal "ColorRed";
_caller setMarkerTypeLocal "loc_Hospital";
_caller setMarkerTextLocal format["%1 | Injury Priority: %2",(_x getVariable["name","Unknown Player"]), (_x getvariable "severity")];
_markers pushBack [_caller,_x];


["MedicalRequestEmerg",[format[localize "STR_Medic_Request",_callerName]]] call BIS_fnc_showNotification;