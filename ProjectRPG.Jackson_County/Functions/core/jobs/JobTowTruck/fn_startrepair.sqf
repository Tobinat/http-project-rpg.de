//[_location] remoteExec ["client_fnc_startSecurity",_player];
//[getpos player,] remoteExec ["client_fnc_startGarbage",_player];
// use lexus with directionals only.
if(myjob != "none") exitwith { hint "Masz już pracę!"; };

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
				hint "Nie masz obecnie żadnych zleceń. Wypatruj obiekty które możesz naprawić!";
				uisleep 60;
			} else {

				if(player distance ((playertasks select 0) select 0) < 15) then {
					hint "Dotarłeś na miejsce!";
					paycheck = paycheck + 250;
					playertasks deleteat 0;
					["ReporterArrived"] spawn mav_ttm_fnc_addExp;
					uisleep 3;
					deletemarkerlocal format["job%1",getPlayerUID player];
				} else {
					hint "Zlecenie (zaznaczone na mapie): Typ - Napraw obiekt";
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