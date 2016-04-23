/*
lawyer sign up
koils a fuck
*/
private["_unit"];
_unit = player;
_myposy = getPos player;
if(life_signedIn) exitWith {
	["Du bist bereits ein Anwalt.", false] spawn domsg;
};

_nearestPlayer = nearestObjects[getPosATL _unit,["man"],3] select 1; 

if(player getVariable ["restrained", false]) exitWith {};
if(isNil "_nearestPlayer") exitwith {["Ein Polizist muss sich in deiner Nähe befinden.", false] spawn domsg;};
_cm = 1;
if ( side _nearestPlayer == west && side player != west) then {
	[0,format["%1 hat sich als Anwalt angemeldet und bekommt nun Regierungsgelder.",name player]] remoteExecCall ["life_fnc_broadcast", _nearestPlayer];
	life_signedIn = true;
	while{life_signedIn} do {
		uiSleep 1;
		_cm = _cm + 1;
		if(_cm == 300) then {
			_cm = 1;
			["cash","add",1150] call life_fnc_handleCash;
			["Du wurdest bezahlt: $1150", false] spawn domsg;
		};
		if( player distance _myposy > 100 ) exitwith {
			["Deine Zahlungen wurden eingestellt.", false] spawn domsg;
			life_signedIn = false;
		};
		if (deadPlayer) exitWith {
			life_signedIn = false;
		};
	};

} else {
	["Ein Polizist muss sich in deiner Nähe befinden.", false] spawn domsg;	
};
