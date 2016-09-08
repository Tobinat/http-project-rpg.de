/*
	File: fn_requestMedic.sqf
	
	
	Description:
	N/A
*/
private["_medicsOnline"];
_medicsOnline = {_x != player && {side _x isEqualTo independent} && {!(_x getVariable["dead",FALSE])}} count playableUnits > 0;

if(_medicsOnline) then {
	[player,profileName] remoteExecCall ["life_fnc_medicRequest",independent];
};



//Create a thread to monitor duration since last request (prevent spammage).
/*
[] spawn 
{
	((findDisplay 7300) displayCtrl 7303) ctrlEnable false;
	sleep (2 * 60);
	((findDisplay 7300) displayCtrl 7303) ctrlEnable true;
};
*/