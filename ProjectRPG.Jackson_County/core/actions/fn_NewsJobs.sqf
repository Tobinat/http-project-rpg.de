/*
File: bank teller payments
*/

if(has_job) exitwith { ["Du hast bereits einen Job! Drücke Shift + 4 um diesen zu beenden!", false] spawn domsg;};

if(side player != civilian) exitwith { ["Nur für Zivilisten!", false] spawn domsg;  };
if(life_NewsJobs) exitWith {
["Du bist bereits ein New-Mitarbeiter.", false] spawn domsg; 
};
if(vest player find "V_Press_F" isEqualTo -1) exitwith {
	["Du benötigst eine Presse-Weste!", false] spawn domsg; 
};
newsspot = getpos player;

has_job = true;
life_NewsJobs = true;


["Um mehr Geld zu erhalten, benötigst du eine TV-Kamera.", false] spawn domsg; 
["Bist du innerhalb eines Fahrzeuges, bekommst du weniger Geld!", false] spawn domsg; 
["Sei sicher, dass du der Einzige bist, der diesen Auftrag erhält, ansonsten bekommst du weniger Geld!", false] spawn domsg; 
_fkit = 45;
player setVariable["ATM_MAN", true, true];
while{_fkit > 0 && life_NewsJobs } do {
	uiSleep 300;
	_curWep = currentWeapon player;
	if(isNull objectParent player) then {

		if(vest player == "v_press_f" && (getpos player) distance newsspot > 100) then
		{
			["bank","add", 1000] call life_fnc_handleCash;
			["Du wurdest bezahlt: $1000", false] spawn domsg; 
			NewsSpot = getpos player;
			["Add",10] call fnc_karma;
		};

		if(vest player == "v_press_f" && _curWep == "Tv_Camera" && (getpos player) distance newsspot > 100) then
		{
			["bank","add", 1000] call life_fnc_handleCash;
			["Du wurdest bezahlt: $1000", false] spawn domsg; 
			NewsSpot = getpos player;
			["Add",15] call fnc_karma;
		};
		if(vest player == "v_press_f" && _curWep == "Tv_Camera" && (getpos player) distance newsspot < 100) then
		{
			["bank","add", 250] call life_fnc_handleCash;
			["Du wurdest bezahlt: $250", false] spawn domsg; 
			NewsSpot = getpos player;
			["Add",5] call fnc_karma;
		};
		if(vest player == "v_press_f" && (getpos player) distance newsspot < 100) then
		{
			["bank","add", 250] call life_fnc_handleCash;
			["Du wurdest bezahlt: $250", false] spawn domsg; 
			NewsSpot = getpos player;
			["Add",2] call fnc_karma;
		};					
	} else {
		if(vest player == "v_press_f" && (getpos player) distance newsspot > 100) then
		{
			["bank","add", 150] call life_fnc_handleCash;
			["Du wurdest bezahlt: $150", false] spawn domsg; 
			NewsSpot = getpos player;
			["Add",5] call fnc_karma;
		};	

	};
	_fkit = _fkit - 1;
	if(_fkit == 5) then {
		["Deine Zahlungen werden in 5 Minuten eingestellt.", false] spawn domsg; 
	};
};
life_NewsJobs = false;

["Deine Zahlungen wurden eingestellt.", false] spawn domsg; 

has_job = false;