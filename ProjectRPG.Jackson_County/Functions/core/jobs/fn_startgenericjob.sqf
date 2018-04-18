_data = _this select 0;
if(myjob != "none") exitwith { hint "Masz już pracę!"; };

if(isnil "taskrunning") then { taskrunning = false; };

myjob = _data;
[] call client_fnc_hudwork;
private ["_warning","_JobBase"];
if(!taskrunning) then {
	[] spawn {
		taskrunning = true;

		_warnings = 0;
		while{taskrunning} do {
			uisleep 300;
			paycheck = paycheck + 45;
		};
		[] call client_fnc_jobEnd;
	};
};