/*
File: destroy evidence
*/
private["_curtarget","_unit"];

_curTarget = cursorTarget;

["Vernichtung von Beweismaterial..", false] spawn domsg;
titleFadeOut 3;
uiSleep 3;
["Dies wird nun einige Minuten dauern, bitte warte hier!", false] spawn domsg;
titleFadeOut 120;
_cme = 1;
_myposy = getPos player;

while {true} do {
	life_action_inUse = true;
	uiSleep 1;
	if( player distance _myposy > 5 ) exitwith { 
		["Du hast dich zu weit entfernt! Die Beweise wurde nicht vernichtet.", false] spawn domsg;
		life_action_inUse = false;
	};
	_cme = _cme + 1;

	if(_cme > 120) exitwith {
	life_action_inUse = false;
		deleteVehicle _curTarget;
		["Du hast alle Beweise vernichtet!", false] spawn domsg;
	};
};
life_action_inUse = false;
