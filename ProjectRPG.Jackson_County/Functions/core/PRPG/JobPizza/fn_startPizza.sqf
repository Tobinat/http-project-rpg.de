if(myjob != "none" && myjob != "pizza") exitwith { hint "Du hast bereits Arbeit!"; };
if(isnil "taskrunning") then { taskrunning = false; };

private ["_warnings"];

if(taskrunning) then {
	_location = _this select 0;
	_sender = _this select 1;
	_jobType = _this select 2;
	_message = _this select 3;
	playertasks pushback [_location,_jobtype];
};

myjob = "pizza";
[] call client_fnc_hudwork;
playertasks = [];
taskrunning = true;
_markername = format["job%1",getPlayerUID player];
_warnings = 0;
_pizzaLevel = 0;
while{taskrunning  && myjob == "pizza" } do {

	if(playertasks isequalTO []) then {

		opfer = playableUnits call BIS_fnc_selectRandom;
		if (!isPlayer opfer) exitWith {};
		if (player == opfer) exitWith {playertasks deleteat 0;};
		playertasks pushback [opfer,"pizzaliefern"];
		[getpos ((playertasks select 0) select 0)] call client_fnc_jobMarker;
		//hint "Auftrag (Markiert auf Karte): Pizza ausliefern.";
		["Ein Lieferauftrag wurde auf der Karter Markiert - Wenn du bei deinem Kunden bist, verlasse das Fahrzeug.", false] spawn domsg;
	} else {

		uisleep 3;
		_warning = _warnings + 1;
		if(_warnings > 150) then {
			taskrunning = false;
			["Du hast viel zu lange gebraucht und die Pizza ist Kalt, du wurdest gefeuert!", false] spawn domsg;
		};

		if !( (getmarkerpos _markername select 0) isEqualTo (getpos ((playertasks select 0) select 0) select 0) && (getmarkerpos _markername select 1) isEqualTo (getpos ((playertasks select 0) select 0) select 1) ) then {
			[getpos ((playertasks select 0) select 0)] call client_fnc_jobMarker;
		};

		if(player distance ((playertasks select 0) select 0) < 15 && vehicle player == player && player distance vehspawned < 10) then {

			if(((playertasks select 0) select 1) == "pizzaliefern") then {
				["pizzaliefern"] spawn client_fnc_getPizza;
				_warnings = 0;
				paycheck = paycheck + 35;
				playertasks deleteat 0;
			};
			uisleep 3;
		};

	};
};

if(myjob == "pizza") then { [] call client_fnc_jobEnd; };
