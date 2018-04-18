//[_location] remoteExec ["client_fnc_startSecurity",_player];
//[getpos player,] remoteExec ["client_fnc_startGarbage",_player];
// use lexus with directionals only.


if(isnil "taskrunning") then { taskrunning = false; };

myjob = "Judge";

private ["_warning","_JobBase"];
if(!taskrunning) then {

	[] spawn {
		playertasks = [];
		taskrunning = true;

		_warnings = 0;
		while{taskrunning} do {
			uisleep 180;
			paycheck = paycheck + 120;
		};
		[] call client_fnc_jobEnd;
	};
};