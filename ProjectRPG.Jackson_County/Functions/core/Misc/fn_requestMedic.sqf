disableSerialization;
player say "racebeep1";
hint "Die Mediziner wurden Informiert.";

{
	_unit = _x call BIS_fnc_getUnitByUid;
	["911: Ein Bewustloser wurde auf der Karte Markiert!", false] remoteExec ["domsg", _unit];
} foreach currentEMS;