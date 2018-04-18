//[position,type IE "Murder" or "Vehicle Accident"] remoteExec ["client_fnc_startNews",_player];
if(myjob != "none") exitwith { hint "Du hast schon Arbeit!"; };
if(isnil "taskrunning") then { taskrunning = false; };

myjob = "NewsMan";

private ["_warning","_JobBase"];
if(!taskrunning) then {

	[] spawn {
		playertasks = [];
		taskrunning = true;

		_warnings = 0;
		while{taskrunning} do {
			uisleep 3;
			if(playertasks isequalto []) then {
				hint "Du hast grad nix zu tun!";
				uisleep 60;
			} else {

				if(player distance ((playertasks select 0) select 0) < 15) then {
					hint "Du bist da, mach die Kamera bereit!";
					paycheck = paycheck + 30;
					playertasks deleteat 0;
					deletemarkerlocal format["job%1",getPlayerUID player];
					uisleep 3;
				} else {
					[format ["Deine aktuelle Aufgabe (Markiert auf der Karte): Aufgabe - %1", ((playertasks select 0) select 1)], false] spawn doquickmsg;
					[((playertasks select 0) select 0)] call client_fnc_jobMarker;
					uisleep 30;
				};
			};
		};
		[] call client_fnc_jobEnd;
	};
};

if(taskrunning) then {
	_location = _this select 0;
	_type = _this select 1;
	playertasks pushback [_location,_type];
};