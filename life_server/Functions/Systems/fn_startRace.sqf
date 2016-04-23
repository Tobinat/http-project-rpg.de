/*
fn_startRace.sqf
Kevin Webb
Sets up the race for the "true_racers"
*/
params [["_racers", [], [[]]], ["_point", [], [[]]], ["_stake", 0, [0]]];

[_point,_stake] remoteExec ["KBW_fnc_initRace",_racers];
_winner = ObjNull;
_exit = false;
while {isNull _winner} do {
	{
		if(vehicle _x distance _point < 12) exitWith {_winner = _x};
	} forEach _racers;
};
[2,format["%1 won the race!",name _winner]] remoteExecCall ["life_fnc_broadcast",_racers];
["atm","add",(_stake * (count _racers))] remoteExecCall ["life_fnc_handleCash",_winner];
["raceDone",true] remoteExecCall ["life_fnc_netSetVar",_racers];