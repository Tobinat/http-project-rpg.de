/*
	File: fn_panicButton.sqf
	Author: Marcel "VariatoX" Koch
	Server: project-rpg.de
	
	Description:
	Startet entsprechende Aktionen des Panikknopfes.
*/

_allowed = param [0,false,[false]];

if(!_allowed) exitWith {systemChat "invalid call"}; //Invalid call
if(isNull player) exitWith {};
if(player getVariable "restrained") exitWith {systemChat "isRestrained"};
if(player getVariable "tied") exitWith {systemChat "isTied"};
if(playerSide == civilian && !license_civ_udc) exitWith {["Authentifizierung fehlgeschlagen! Sie sind kein Polizist.", false] spawn domsg;};
if(life_istazed OR life_knockout) exitWith {systemChat "knockout or tazed"};

private _pos = mapGridPosition player;
private _side = 0;

systemChat "== STARTING _side CHECK";

//Cops
if(side player == west) then {
	_side = 1;
};

//RFA
if(side player == independent) then {
	_side = 2;
};

//Undercover
if(license_civ_udc) then {
	_side = 3;
};

systemChat format ["Side = ",_side]

{ //Abfrage der Hurensöhne
	if((side _x == west) || (_x getVariable "udcLevel")) then {
		switch(_side) do {
			case 0: {};
			case 1: {
				[1,format["911 NOTRUF - PANIK KNOPF VERWENDET VON %1 - Position: %2",name player, _pos]] remoteExecCall ["life_fnc_broadcast", _x];
				["dpanic", false] remoteExec ["fnc_dispatch",_x];
			};

			case 2: {
				[1,format["RFA NOTRUF - PANIK KNOPF VERWENDET VON %1 - Position: %2",name player, _pos]] remoteExecCall ["life_fnc_broadcast", _x];
				["dpanic", false] remoteExec ["fnc_dispatch",_x];
			};

			case 3: {
				[1,format["FBI / LV SF NOTRUF - PANIK KNOPF VERWENDET VON %1 - Position: %2",name player, _pos]] remoteExecCall ["life_fnc_broadcast", _x];
				["dpanic", false] remoteExec ["fnc_dispatch",_x];
			};
			default {};
		};
	};
} forEach playableUnits;
[] spawn {
	if(player getVariable ["sosActive",true]) exitWith {};
	player setVariable ["sosActive",true,true];
	sleep 60;
	player setVariable ["sosActive",false,true];
};
systemChat "== EXECUTED SUCCESSFULLY";

[player,"panicbutton"] spawn life_fnc_nearestSound;