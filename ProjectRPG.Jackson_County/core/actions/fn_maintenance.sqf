/*
maintenance / oil rig jobs
*/

if(has_job) exitwith { ["Du hast bereits einen Job! Drücke Shift + 4 um diesen zu beenden!", false] spawn domsg;};
if(maintenance_on) exitwith {};
oil = false;
farm = false;
switch(_this select 3) do {
	case "oil": {
		if(license_civ_air) then {
		oil = true;
		has_job = true;
		maintenance_on = true;
		[] spawn fnc_maintstart;
		["Du wurdest für verschiedene Aufgaben bezahlt!", false] spawn domsg;
		} else {
			["Du benötigst einen Flugschein.", false] spawn domsg;
		};
	};
	case "farm": {
		if(license_civ_truck) then {
		farm = true;
		has_job = true;
		maintenance_on = true;
		["Du wurdest für verschiedene Aufgaben bezahlt!", false] spawn domsg;
		[] spawn fnc_maintstart;
		} else {
			["Du benötigst einen LKW-Führerschein.", false] spawn domsg;
		};
	};
};

_fkit = 0;
sleep 1;
_fkit = 9;

while{_fkit > 0 && maintenance_on} do {
	uiSleep 300;
	if(vehicle player != player) then {
		if (player distance oilrig1 < 100 || player distance oilrig2 < 100 || player distance oilrig3 < 100 ) then
		{
			["bank","add", 1330] call life_fnc_handleCash;
			["Du wurdest für verschiedene Aufgaben bezahlt: $420", false] spawn domsg;
		};
		if (player distance wheat1 < 100 ) then
		{
			["bank","add", 520] call life_fnc_handleCash;
			["Du wurdest für verschiedene Aufgaben bezahlt: $220", false] spawn domsg;
		};
		if (player distance wheat1 > 200 && farm ) exitwith
		{

		};
	};
	_fkit = _fkit - 1;
};
["Deine Zahlungen wurden eingestellt.", false] spawn domsg;
mainteneance_on = false;

has_job = false;