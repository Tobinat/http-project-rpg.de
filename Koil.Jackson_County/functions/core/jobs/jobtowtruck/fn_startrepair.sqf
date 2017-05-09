//[_location] remoteExec ["client_fnc_startSecurity",_player];
//[getpos player,] remoteExec ["client_fnc_startGarbage",_player];
// use lexus with directionals only.
if(myjob != "none") exitwith { hint "You already have a job!"; };

if(isnil "taskrunning") then { taskrunning = false; };

myjob = "Repairman";
[] call client_fnc_hudwork;
private ["_warning","_JobBase"];
if(!taskrunning) then {

	[] spawn {
		playertasks = [];
		taskrunning = true;

		_warnings = 0;
		while{taskrunning && myjob == "Repairman"} do {
			uisleep 3;
			if(playertasks isequalto []) then {
				hint "You have no current jobs, please patrol for objects to repair!";
				uisleep 60;
			} else {

				if(player distance ((playertasks select 0) select 0) < 15) then {
					hint "You have arrived at your location!";
					paycheck = paycheck + 250;
					playertasks deleteat 0;
					uisleep 3;
					deletemarkerlocal format["job%1",getPlayerUID player];
				} else {
					hint "Your current Job (Marked on the Map): Job Type - Repair Object";	
					[((playertasks select 0) select 0)] call client_fnc_jobMarker;			
					uisleep 3;
				};
			};
		};
		if(myjob == "Repairman") then { [] call client_fnc_jobEnd; };
	};
};

if(taskrunning) then { 
	_location = _this select 0;
	playertasks pushback [_location]; 
};