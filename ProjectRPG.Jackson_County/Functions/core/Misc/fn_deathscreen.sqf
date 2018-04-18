// death screen

private["_medicsOnline","_medicsNear"];
disableSerialization;

_medicsOnline = ((findDisplay 7300) displayCtrl 7304);
_medicsNear = ((findDisplay 7300) displayCtrl 7305);

waitUntil {
	_nearby = 99999;
	{
		if (side _x == independent && !(_x getVariable["dead",FALSE]) && _x != player) then
		{
			_distance = (getPosATL player) distance _x;
			if (_distance < _nearby) then { _nearby = _distance; };
		};
	} foreach playableUnits;
	_medicsOnline ctrlSetText format["Najblizszy: Broken :)",player];
	if (_nearby == 99999) then { _medicsNear ctrlSetText format["Najblizszy: None",_nearby]; }
	else { _medicsNear ctrlSetText format["Najblizszy: Broken :)",(round _nearby)]; };
	uiSleep 5;
	(isNull (findDisplay 7300))
};