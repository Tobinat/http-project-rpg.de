
_player = _this select 0;

	_currentPoliceDispatch = [];
	_currentMedicDispatch = [];
	_currentSecurity = [];
	_currentLegalAid = [];
	_currentRepairmen = [];
	_currentJudges = [];
	_currentProsecutor = [];
	_currentLawyers = [];
	_currentMailmen = [];
	_currentTowTruckDrivers = [;
	_currentNewsMan = [];
	_currentTaxiDrivers = [];

	{
		_unit = _x call BIS_fnc_getUnitByUid;
		_currentPoliceDispatch pushback _unit;
	} foreach currentPoliceDispatch;

	{
		_unit = _x call BIS_fnc_getUnitByUid;
		_currentMedicDispatch pushback _unit;
	} foreach currentMedicDispatch;

	{
		_unit = _x call BIS_fnc_getUnitByUid;
		_currentSecurity pushback _unit;
	} foreach currentSecurity;

	{
		_unit = _x call BIS_fnc_getUnitByUid;
		_currentLegalAid pushback _unit;
	} foreach currentLegalAid;

	{
		_unit = _x call BIS_fnc_getUnitByUid;
		_currentRepairmen pushback _unit;
	} foreach currentRepairmen;

	{
		_unit = _x call BIS_fnc_getUnitByUid;
		_currentJudges pushback _unit;
	} foreach currentJudges;

	{
		_unit = _x call BIS_fnc_getUnitByUid;
		_currentProsecutor pushback _unit;
	} foreach currentProsecutor;

	{
		_unit = _x call BIS_fnc_getUnitByUid;
		_currentLawyers pushback _unit;
	} foreach currentLawyers;

	{
		_unit = _x call BIS_fnc_getUnitByUid;
		_currentMailmen pushback _unit;
	} foreach currentMailmen;

	{
		_unit = _x call BIS_fnc_getUnitByUid;
		_currentTowTruckDrivers pushback _unit;
	} foreach currentTowTruckDrivers;

	{
		_unit = _x call BIS_fnc_getUnitByUid;
		_currentNewsMan pushback _unit;
	} foreach currentNewsMan;

	{
		_unit = _x call BIS_fnc_getUnitByUid;
		_currentTaxiDrivers pushback _unit;
	} foreach currentTaxiDrivers;

_information = [
	["Polizei",_currentPoliceDispatch],
	["S.L.F.D.",_currentMedicDispatch],
	["Security",_currentSecurity],
	["Anwalt",_currentLegalAid],
	["Mechaniker",_currentRepairmen],
	["Richter",_currentJudges],
	["Prokuratorzy",_currentProsecutor],
	["Anwalt",_currentLawyers],
	["Postbote",_currentMailmen],
	["Abschleppwagen",_currentTowTruckDrivers],
	["Reporter",_currentNewsMan],
	["Taxi",_currentTaxiDrivers]

];

[_information] remoteExec ["client_fnc_updatePhonebook",_player];


diag_log ["retreive phonebook %1", _player];
