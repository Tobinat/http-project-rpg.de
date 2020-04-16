params ["_location"];
diag_log ["starting fire %1", _location];
if(count currentEMS > 0) then {
	[_location] remoteexec ["client_fnc_fireStart",-2];
	{
		[_location,"Feuer"] remoteexec ["client_fnc_jobMarker", _x];
		I["nformation","911: An alle Einheiten! Ein Feuer ist ausgebrochen! Die Position wurde auf der Karte Markiert!",[255,69,0,1],""] remoteExec ["Client_fnc_showNotification", _x];
	} foreach currentEMS BIS_fnc_getUnitbyUid;
};
