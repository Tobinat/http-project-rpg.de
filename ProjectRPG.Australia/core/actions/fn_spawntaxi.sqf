/*
File: taxi payments
*/
if(life_taxi) exitWith {["Du bist bereits als Fahrer eingetragen.", false] spawn domsg;};

if(has_job) exitwith { ["Du hast schon einen Job! Zum Verlassen denke stark an Shift + 4!", false] spawn domsg;};

has_job = true;

life_taxi = true;
["Du wirst für das Mitnehmen von Leuten in deinem Taxi bezahlt", false] spawn domsg;

_fkit = 45;
_payment = 0;

while{_fkit > 0 && life_taxi} do {
	uisleep 60;
	_fkit = _fkit - 1;

	if(vehicle player != player) then
		{
		if(driver (vehicle player) == player && typeOf (vehicle player) == "CG_Taxi") then {
			["bank","add", 250] call life_fnc_handleCash;
			["Dir wurden extra 250$ ausgezahlt!", false] spawn domsg; 
		};	
	};

	if(_fkit == 1) then {
		["Deine Schicht endet in einer Minute!", false] spawn domsg;
	};

};
life_taxi = false;
["Deine Schicht ist vorbei!", false] spawn domsg;
["Melde dich erneut bei der Zentrale um eine weitere Schicht anzutreten!", false] spawn domsg;
has_job = false;