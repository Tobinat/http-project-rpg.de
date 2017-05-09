//	[_location,_sender,_jobType,_message] remoteExec ["client_fnc_mailSystem",_player];
if(myjob != "none" && myjob != "mail") exitwith { hint "You already have a job!"; };

if(isnil "taskrunning") then { taskrunning = false; };

myjob = "mail";
[] call client_fnc_hudwork;
private ["_warning","_JobBase"];
if(!taskrunning) then {

	[] spawn {
		playertasks = [];
		taskrunning = true;

		_warnings = 0;
		while{taskrunning && myjob == "mail"} do {
			uisleep 3;
			if(playertasks isequalto []) then {
	
				if(player distance [7151.34,2462.99,0.00143814] > 100) then {
					[[7151.34,2462.99,0.00143814]] call client_fnc_jobMarker;
					hint "Please head to your post office (Marked on the Map)";
					uisleep 120;
					_warnings = _warnings + 1;
				};

				if(_warnings > 10) then { 
					taskrunning = false; 
					hint "You have been laid off from your job!"; 
				};

			} else {

				if(player distance ((playertasks select 0) select 0) < 15) then {
					hint "You successfully finished that job!";
					paycheck = paycheck + 235;
					if(((playertasks select 0) select 3) == "Personal") then {
						[] remoteExec ["client_fnc_completemail",((playertasks select 0) select 1)];
					};
					playertasks deleteat 0;
					uisleep 3;
				} else {
					hint format["Your current Job (Marked on the Map): Delivery Type - %1",(playertasks select 0) select 3];	
					[((playertasks select 0) select 0)] call client_fnc_jobMarker;			
					uisleep 3;
				};
			};
		};
			
			{
				if((_x select 3) == "Personal") then {
					[] remoteExec ["client_fnc_completemail",(_x select 1)];
				};
			} foreach playertasks;

			if(myjob == "mail") then { [] call client_fnc_jobEnd; };
	};
};


if(taskrunning) then { 
	_location = _this select 0;
	_sender = _this select 1;
	_jobType = _this select 2;
	_message = _this select 3;
	playertasks pushback [_location,_sender,_jobtype,_message]; 
};