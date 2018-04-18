//[getpos player(or object they drop / bin they use),"player"] remoteExec ["client_fnc_startGarbage",_player];
//
// _type is bin, player, dump - only should need to call player driven tasks with remoteexec.
if(myjob != "none" && myjob != "TrashMan") exitwith { hint "Masz już pracę!"; };
if(isnil "taskrunning") then { taskrunning = false; };

if(isnil "mapBins") then {
	mapBins = nearestObjects [getPos player,["Land_Dumpster_DED_Dumpster_01_F"],3500];
};

private ["_warnings"];

if(taskrunning) then { 
	_location = _this select 0;
	_sender = _this select 1;
	_jobType = _this select 2;
	_message = _this select 3;
	playertasks pushback [_location,_jobtype]; 
};

myjob = "TrashMan";
[] call client_fnc_hudwork;
playertasks = [];
taskrunning = true;
_markername = format["job%1",getPlayerUID player];
_warnings = 0;
_garbageLevel = 0;
while{taskrunning  && myjob == "TrashMan" } do {

	if(playertasks isequalTO []) then {

		if(_garbageLevel > 10) then {
			_garbageLevel = 0;
			playertasks pushback [[1064,3667,0.014],"dump"];	
			[getpos ((playertasks select 0) select 0)] call client_fnc_jobMarker;
			hint "Zlecenie (Zaznaczone na mapie): Wywóz śmieci";			
		} else {
			mybin = mapBins call BIS_fnc_selectRandom;
			playertasks pushback [mybin,"bin"];
			[getpos ((playertasks select 0) select 0)] call client_fnc_jobMarker;
			hint "Zlecenie (Zaznaczone na mapie): Wywóz śmieci";
		};
	} else {

		uisleep 3;	
		_warning = _warnings + 1;
		if(_warnings > 150) then { 
			taskrunning = false; 
			hint "Zostałeś wyrzucony z pracy!"; 
		};

		if !( (getmarkerpos _markername select 0) isEqualTo (getpos ((playertasks select 0) select 0) select 0) && (getmarkerpos _markername select 1) isEqualTo (getpos ((playertasks select 0) select 0) select 1) ) then {
			[getpos ((playertasks select 0) select 0)] call client_fnc_jobMarker;
		};


		if(player distance ((playertasks select 0) select 0) < 15 && vehicle player != player && player distance vehspawned < 10) then {

			if(((playertasks select 0) select 1) == "bin") then {
				["bin"] spawn client_fnc_collectGarbage;
				_warnings = 0;
				paycheck = paycheck + 130;
				playertasks deleteat 0;
				_garbagelevel = _garbagelevel + 1;
			};

			if(((playertasks select 0) select 1) == "dump") then {
				["dump"] spawn client_fnc_collectGarbage;
				_warnings = 0;
				paycheck = paycheck + 250;
				playertasks deleteat 0;
			};

			if(((playertasks select 0) select 1) == "player") then {
				//create function here to pick up player dropped garbage then pay the user.
				hint "Zbierz śmieci znajdujące się w pobliżu.";
				_garbagelevel = _garbagelevel + 1;
			};

			uisleep 3;
		};

	};
};

if(myjob == "TrashMan") then { [] call client_fnc_jobEnd; };


