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
	
	_old =  currentPizzaFicker;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentPizzaFicker FIND objNull;  
		 currentPizzaFicker deleteAT _pia;  
	};

	if!(_old isEqualTo  currentPizzaFicker) then { publicvariable "currentPizzaFicker"; };
	
	_old =  currentdimis;

	for "_i" from 0 to 20 step 1 do {
		_pia =  currentdimis FIND objNull;  
		 currentdimis deleteAT _pia;  
	};

	if!(_old isEqualTo  currentdimis) then { publicvariable "currentdimis"; };

	_currentPoliceDispatch = [];
	_currentMedicDispatch = [];
	_currentSecurity = [];
	_currentRepairmen = [];
	_currentJudges = [];
	_currentProsecutor = [];
	_currentLawyers = [];
	_currentMailmen = [];
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
		_currentNewsMan pushback _unit;
	} foreach currentNewsMan;

	{
		_unit = _x call BIS_fnc_getUnitByUid;
		_currentTaxiDrivers pushback _unit;
	} foreach currentTaxiDrivers;




_allJobs = [

	["Sheriffs Department",_currentPoliceDispatch],
	["Fire Department",_currentMedicDispatch],
	["Security",_currentSecurity],
	["Mechaniker",_currentRepairmen],
	["Richter",_currentJudges],
	["Staatsanwalt",_currentProsecutor],
	["Anwalt",_currentLawyers],
	["Postbote",_currentMailmen],
	["Reporter",_currentNewsMan],
	["Taxifahrer",_currentTaxiDrivers]
	
];

_display = findDisplay 9999;

_list = _display displayCtrl 9001;
lbClear _list;
{
	_list lbAdd format["%1", (_x select 0)];
	_list lbSetdata [(lbSize _list)-1,str(_x select 1)];
} foreach _alljobs;
