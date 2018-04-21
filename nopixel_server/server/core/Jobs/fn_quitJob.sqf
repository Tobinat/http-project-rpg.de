_player = _this select 0;

diag_log["leave job % 1", _player];


/*

if (_player IN currentPoliceDispatch) then {
    _pia = currentPoliceDispatch find _player;
    currentPoliceDispatch deleteAt _pia;
    publicvariable "";
	//currentPoliceDispatch =  "";
};

if (_player IN currentMedicDispatch) then {
    _pia = currentMedicDispatch find _player;
    currentMedicDispatch deleteAt _pia;
    publicvariable "";
	//currentMedicDispatch = "";
};

if (_player IN currentFireDispatch) then {
    _pia = currentFireDispatch find _player;
    currentFireDispatch deleteAt _pia;
    publicvariable "";
	//currentFireDispatch = "";
};
*/

if (_player IN currentPoliceDispatch) then {
	_pia = currentPoliceDispatch find _player;
	currentPoliceDispatch deleteAt _pia;
	publicvariable "currentPoliceDispatch";
};

if (_player IN currentMedicDispatch) then { 
	_pia = currentMedicDispatch find _player;
	currentMedicDispatch deleteAt _pia;
	publicvariable "currentMedicDispatch";
};

if (_player IN currentFireDispatch) then { 
	_pia = currentFireDispatch find _player;
	currentFireDispatch deleteAt _pia;
	publicvariable "currentFireDispatch";
};


if (_player IN currentCop) exitwith {
    _pia = currentCop find _player;
    currentCop deleteAt _pia;
    publicvariable "currentCop";
	//currentCop ="";
};

if (_player IN currentEMS) exitwith {
    _pia = currentEMS find _player;
    currentEMS deleteAt _pia;
    publicvariable "currentEMS";
   //currentEMS ="";
};

if (_player IN currentFire) exitwith {
    _pia = currentFire find _player;
    currentFire deleteAt _pia;
    publicvariable "currentFire";
    //currentFire = "";
};

if (_player IN currentMafia) exitwith {
    _pia = currentMafia find _player;
    currentMafia deleteAt _pia;
    publicvariable "currentMafia";
	//currentMafia = "";
};

if (_player IN currentLawyers) exitwith {
    _pia = currentLawyers find _player;
    currentLawyers deleteAt _pia;
    publicvariable "currentLawyers";
	//currentLawyers ="";
};

if (_player IN currentJudges) exitwith {
    _pia = currentJudges find _player;
    currentJudges deleteAt _pia;
    publicvariable "currentJudges";
	//currentJudges ="";
};

if (_player IN currentProsecutor) exitwith {
    _pia = currentProsecutor find _player;
    currentProsecutor deleteAt _pia;
    publicvariable "currentProsecutor";
	//currentProsecutor ="";
};

if (_player IN currentMailmen) exitwith {
    _pia = currentMailmen find _player;
    currentMailmen deleteAt _pia;
    publicvariable "currentMailmen";
//    currentMailmen ="";

};

if (_player IN currentsecurity) exitwith {
    _pia = currentsecurity find _player;
    currentsecurity deleteAt _pia;
    publicvariable "currentsecurity";
 //   currentsecurity ="";

};

if (_player IN currentTowTruckDrivers) exitwith {
    _pia = currentTowTruckDrivers find _player;
    currentTowTruckDrivers deleteAt _pia;
    publicvariable "currentTowTruckDrivers";
 //   currentTowTruckDrivers ="";

};

if (_player IN currentRepairmen) exitwith {
    _pia = currentRepairmen find _player;
    currentRepairmen deleteAt _pia;
    publicvariable "currentRepairmen";
 //   currentRepairmen ="";

};

if (_player IN currentNewsMan) exitwith {
    _pia = currentNewsMan find _player;
    currentNewsMan deleteAt _pia;
    publicvariable "currentNewsMan";
 //   currentNewsMan ="";

};

if (_player IN currentTrashMan) exitwith {
    _pia = currentTrashMan find _player;
    currentTrashMan deleteAt _pia;
    publicvariable "currentTrashMan";
 //   currentTrashMan ="";

};

if (_player IN currentmailmen) exitwith {
    _pia = currentmailmen find _player;
    currentmailmen deleteAt _pia;
    publicvariable "currentmailmen";
 //   currentMailmen ="";

};

if (_player IN currentTaxiDrivers) exitwith {
    _pia = currentTaxiDrivers find _player;
    currentTaxiDrivers deleteAt _pia;
    publicvariable "currentTaxiDrivers";
//  currentTaxiDrivers ="";

};

if (_player IN currentlegalaid) exitwith {
    _pia = currentlegalaid find _player;
    currentlegalaid deleteAt _pia;
    publicvariable "currentlegalaid";
//    currentLegalAid ="";

};
if (_player IN currentDoughnuts) exitwith {
    _pia = currentDoughnuts find _player;
    currentDoughnuts deleteAt _pia;
    publicvariable "currentDoughnuts";

};