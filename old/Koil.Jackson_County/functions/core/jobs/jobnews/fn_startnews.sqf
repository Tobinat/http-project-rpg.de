//[position,type IE "Murder" or "Vehicle Accident"] remoteExec ["client_fnc_startNews",_player];

if(myjob != "none" && myjob != "NewsMan") exitwith { hint "Du hast schon Arbeit!"; };
if(isnil "taskrunning") then { taskrunning = false; };

myjob = "NewsMan";

[] call client_fnc_hudwork;
private ["_warning","_JobBase"];
if(!taskrunning) then {

	[] spawn {
		playertasks = [];
		taskrunning = true;

		_warnings = 0;
		while{taskrunning && myjob == "NewsMan"} do {
			uisleep 3;
			if(playertasks isequalto []) then {
				hint "Du hast grad nix zu tun!";
				uisleep 60;
			} else {

				if(player distance ((playertasks select 0) select 0) < 15 && player distance vehspawned < 10) then {
					hint "Du bist da, mach die Kamera bereit!";
					paycheck = paycheck + 150;
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
		if(myjob == "NewsMan") then { [] call client_fnc_jobEnd; };
	};
};

if(taskrunning && count playertasks < 3) then {
	_location = _this select 0;
	_type = _this select 1;
	playertasks pushback [_location,_type];
};