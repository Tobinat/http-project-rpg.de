if(myjob != "none" && myjob != "busdriver") exitwith { hint "Du hast bereits Arbeit!"; };
if(isnil "taskrunning") then { taskrunning = false; };

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
		_fickandi = round (random 26);
		_dimimarker = format["bus_%1", _fickandi];
		dimishaltestelle = getmarkerpos _dimimarker;
		playertasks pushback [dimishaltestelle,"bus"];
		[dimishaltestelle,"bus"] call client_fnc_jobMarker;
		["Die nächste Buhaltestelle wurde auf der Karte markiert!",false] spawn domsg;
		
	} else {

		uisleep 3;	
		_warning = _warnings + 1;
		if(_warnings > 600) then { 
			taskrunning = false; 
			["Du hast zulange gebraucht und wurdest entlassen!",false] spawn domsg;
		};

		if !((getmarkerpos _markername select 0) isEqualTo (dimishaltestelle select 0) && (getmarkerpos _markername select 1) isEqualTo (dimishaltestelle select 1)) then {
			[dimishaltestelle,"bus"] call client_fnc_jobMarker;
		};


		if(player distance dimishaltestelle < 15 && vehicle player != player && player distance vehspawned < 10) then {
			_warnings = 0;
			paycheck = paycheck + 200;
			playertasks deleteat 0;
			uisleep 3;
		};

	};
};

if(myjob == "busdriver") then { [] call client_fnc_jobEnd; };