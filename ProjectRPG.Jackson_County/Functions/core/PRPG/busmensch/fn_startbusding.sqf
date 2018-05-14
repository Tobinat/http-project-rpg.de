if(myjob != "none" && myjob != "busdriver") exitwith { hint "Du hast bereits Arbeit!"; };
if(isnil "taskrunning") then { taskrunning = false; };

if(isnil "haltestellen") then {
	haltestellen = nearestObjects [getPos player,["paradadebus_civ"],3500];
};


private ["_warnings"];

if(taskrunning) then { 
	_location = _this select 0;
	_sender = _this select 1;
	_jobType = _this select 2;
	_message = _this select 3;
	playertasks pushback [_location,_jobtype]; 
};

myjob = "busdriver";
[] call client_fnc_hudwork;
playertasks = [];
taskrunning = true;
_markername = format["job%1",getPlayerUID player];
_warnings = 0;

while{taskrunning  && myjob == "busdriver" } do {

	if(playertasks isequalTO []) then {
		dimishaltestelle = haltestellen call BIS_fnc_selectRandom;
		playertasks pushback [dimishaltestelle];
		[getpos ((playertasks select 0) select 0),"bus"] call client_fnc_jobMarker;
		["Die nächste Buhaltestelle wurde auf der Karte markiert!",false] spawn domsg;
	} else {

		uisleep 3;	
		_warning = _warnings + 1;
		if(_warnings > 150) then { 
			taskrunning = false; 
			["Du hast zulange gebraucht und wurdest entlassen!",false] spawn domsg;
		};

		if !( (getmarkerpos _markername select 0) isEqualTo (getpos ((playertasks select 0) select 0) select 0) && (getmarkerpos _markername select 1) isEqualTo (getpos ((playertasks select 0) select 0) select 1) ) then {
			[getpos ((playertasks select 0) select 0),"bus"] call client_fnc_jobMarker;
		};


		if(player distance ((playertasks select 0) select 0) < 15 && vehicle player != player) then {
			_warnings = 0;
			paycheck = paycheck + 130;
			playertasks deleteat 0;
			uisleep 3;
		};

	};
};

if(myjob == "busdriver") then { [] call client_fnc_jobEnd; };