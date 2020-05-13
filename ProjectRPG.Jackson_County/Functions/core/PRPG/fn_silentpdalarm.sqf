if (myjob in ["Cop","EMS"] ) exitWith {};
{
	_unit = _x call BIS_fnc_getUnitByUid;
	[getPos player,"cop"] remoteexec ["client_fnc_jobMarker", _unit];
	["911: Stiller Alarm, jemand versucht in eine Dienststelle einzudringen!", false] remoteExec ["domsg", _unit];
} foreach currentCop;

hint "FUNKTIONIERT";