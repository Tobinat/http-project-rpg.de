disableSerialization;

	_old = currentPoliceDispatch;

	for "_i" from 0 to 20 step 1 do {
		_pia = currentPoliceDispatch FIND objNull;  
		currentPoliceDispatch deleteAT _pia;  
	};

	if!(_old isEqualTo currentpolicedispatch) then { publicvariable "currentPoliceDispatch"; };





	_old =  currentMedicDispatch;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentMedicDispatch FIND objNull;  
		 currentMedicDispatch deleteAT _pia;  
	};

	if!(_old isEqualTo  currentMedicDispatch) then { publicvariable "currentMedicDispatch"; };



	_old =  currentFireDispatch;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentFireDispatch FIND objNull;  
		 currentFireDispatch deleteAT _pia;  
	};

	if!(_old isEqualTo  currentFireDispatch) then { publicvariable "currentFireDispatch"; };



	_old =  currentCop;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentCop FIND objNull;  
		 currentCop deleteAT _pia;  
	};

	if!(_old isEqualTo  currentCop) then { publicvariable "currentCop"; };



	_old =  currentEMS;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentEMS FIND objNull;  
		 currentEMS deleteAT _pia;  
	};

	if!(_old isEqualTo  currentEMS) then { publicvariable "currentEMS"; };


	_old =  currentFire;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentFire FIND objNull;  
		 currentFire deleteAT _pia;  
	};

	if!(_old isEqualTo  currentFire) then { publicvariable "currentFire"; };


 
	_old =  currentMafia;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentMafia FIND objNull;  
		 currentMafia deleteAT _pia;  
	};

	if!(_old isEqualTo  currentMafia) then { publicvariable "currentMafia"; };


 
	_old =  currentLawyers;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentLawyers FIND objNull;  
		 currentLawyers deleteAT _pia;  
	};

	if!(_old isEqualTo  currentLawyers) then { publicvariable "currentLawyers"; };



	_old =  currentJudges;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentJudges FIND objNull;  
		 currentJudges deleteAT _pia;  
	};

	if!(_old isEqualTo  currentJudges) then { publicvariable "currentJudges"; };

	_old =  currentProsecutor;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentProsecutor FIND objNull;  
		 currentProsecutor deleteAT _pia;  
	};

	if!(_old isEqualTo  currentProsecutor) then { publicvariable "currentProsecutor"; };


	_old =  currentMailmen;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentMailmen FIND objNull;  
		 currentMailmen deleteAT _pia;  
	};

	if!(_old isEqualTo  currentMailmen) then { publicvariable "currentMailmen"; };




	_old =  currentsecurity;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentsecurity FIND objNull;  
		 currentsecurity deleteAT _pia;  
	};

	if!(_old isEqualTo  currentsecurity) then { publicvariable "currentsecurity"; };



	_old =  currentTowTruckDrivers;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentTowTruckDrivers FIND objNull;  
		 currentTowTruckDrivers deleteAT _pia;  
	};

	if!(_old isEqualTo  currentTowTruckDrivers) then { publicvariable "currentTowTruckDrivers"; };


	_old =  currentRepairmen;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentRepairmen FIND objNull;  
		 currentRepairmen deleteAT _pia;  
	};

	if!(_old isEqualTo  currentRepairmen) then { publicvariable "currentRepairmen"; };


	_old =  currentNewsMan;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentNewsMan FIND objNull;  
		 currentNewsMan deleteAT _pia;  
	};

	if!(_old isEqualTo  currentNewsMan) then { publicvariable "currentNewsMan"; };

	_old =  currentTrashMan;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentTrashMan FIND objNull;  
		 currentTrashMan deleteAT _pia;  
	};

	if!(_old isEqualTo  currentTrashMan) then { publicvariable "currentTrashMan"; };


	_old =  currentmailmen;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentmailmen FIND objNull;  
		 currentmailmen deleteAT _pia;  
	};

	if!(_old isEqualTo  currentmailmen) then { publicvariable "currentmailmen"; };


 
	_old =  currentTaxiDrivers;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentTaxiDrivers FIND objNull;  
		 currentTaxiDrivers deleteAT _pia;  
	};

	if!(_old isEqualTo  currentTaxiDrivers) then { publicvariable "currentTaxiDrivers"; };

	_old =  currentlegalaid;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentlegalaid FIND objNull;  
		 currentlegalaid deleteAT _pia;  
	};

	if!(_old isEqualTo currentlegalaid) then { publicvariable "currentlegalaid"; };


_allJobs = [

	["Policja",currentPoliceDispatch],
	["Medycy",currentMedicDispatch],
	["Strażacy",currentFireDispatch],

	["Ochrona",currentSecurity],
	["Mechanik",currentRepairmen],
	["Sędzia",currentJudges],
	["Prokuratorzy",currentProsecutor],
	["Adwokaci",currentLawyers],
	["Listonosze",currentMailmen],

	["Reporterzy",currentNewsMan],
	["Taksowkarze",currentTaxiDrivers]
	
];

_display = findDisplay 9999;

_list = _display displayCtrl 9001;
lbClear _list;
{
	_list lbAdd format["%1", (_x select 0)];
	_list lbSetdata [(lbSize _list)-1,str(_x select 1)];
} foreach _alljobs;
