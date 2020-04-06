
_player = _this select 0;

_information = [
 /*
["Police Dispatch",currentPoliceDispatch],
["Medic Dispatch",currentMedicDispatch],
["Fire Dispatch",currentFireDispatch],
["Security",currentSecurity],
["Legal Aid",currentLegalAid],
["Repairmen",currentRepairmen],
["Judges",currentJudges],
["Lawyers",currentLawyers],
["Mail Men",currentMailmen],
["Tow Trucks",currentTowTruckDrivers],
["News Worker",currentNewsMan],
["Taxi",currentTaxiDrivers]
 */
	["Polizei",currentPoliceDispatch],
	["S.L.F.D.",currentMedicDispatch],
	//["Fire Departmend",currentFireDispatch],
	["Security",currentSecurity],
	["Anwalt",currentLegalAid],
	["Mechaniker",currentRepairmen],
	["Richter",currentJudges],
	["Prokuratorzy",currentProsecutor],
	["Anwalt",currentLawyers],
	["Postbote",currentMailmen],
	["Abschleppwagen",currentTowTruckDrivers],
	["Reporter",currentNewsMan],
	["Taxi",currentTaxiDrivers]

];

[_information] remoteExec ["client_fnc_updatePhonebook",_player];


diag_log ["retreive phonebook %1", _player];
