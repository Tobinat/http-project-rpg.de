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

if (_playeruid IN currentPoliceDispatch) then {
	_pia = currentPoliceDispatch find _playeruid;
	currentPoliceDispatch deleteAt _pia;
	publicvariable "currentPoliceDispatch";
};

if (_playeruid IN currentMedicDispatch) then { 
	_pia = currentMedicDispatch find _playeruid;
	currentMedicDispatch deleteAt _pia;
	publicvariable "currentMedicDispatch";
};

if (_playeruid IN currentFireDispatch) then { 
	_pia = currentFireDispatch find _playeruid;
	currentFireDispatch deleteAt _pia;
	publicvariable "currentFireDispatch";
};


if (getplayeruid _player IN currentCop) exitwith {
    _pia = currentCop find getplayeruid _player;
    currentCop deleteAt _pia;
    publicvariable "currentCop";
	//currentCop ="";
};

if (_playeruid IN currentEMS) exitwith {
    _pia = currentEMS find _playeruid;
    currentEMS deleteAt _pia;
    publicvariable "currentEMS";
   //currentEMS ="";
};

if (_playeruid IN currentFire) exitwith {
    _pia = currentFire find _playeruid;
    currentFire deleteAt _pia;
    publicvariable "currentFire";
    //currentFire = "";
};

if (_playeruid IN currentMafia) exitwith {
    _pia = currentMafia find _playeruid;
    currentMafia deleteAt _pia;
    publicvariable "currentMafia";
	//currentMafia = "";
};

if (_playeruid IN currentLawyers) exitwith {
    _pia = currentLawyers find _playeruid;
    currentLawyers deleteAt _pia;
    publicvariable "currentLawyers";
	//currentLawyers ="";
};

if (_playeruid IN currentJudges) exitwith {
    _pia = currentJudges find _playeruid;
    currentJudges deleteAt _pia;
    publicvariable "currentJudges";
	//currentJudges ="";
};

if (_playeruid IN currentProsecutor) exitwith {
    _pia = currentProsecutor find _playeruid;
    currentProsecutor deleteAt _pia;
    publicvariable "currentProsecutor";
	//currentProsecutor ="";
};

if (_playeruid IN currentMailmen) exitwith {
    _pia = currentMailmen find _playeruid;
    currentMailmen deleteAt _pia;
    publicvariable "currentMailmen";
//    currentMailmen ="";

};

if (_playeruid IN currentsecurity) exitwith {
    _pia = currentsecurity find _playeruid;
    currentsecurity deleteAt _pia;
    publicvariable "currentsecurity";
 //   currentsecurity ="";

};

if (_playeruid IN currentTowTruckDrivers) exitwith {
    _pia = currentTowTruckDrivers find _playeruid;
    currentTowTruckDrivers deleteAt _pia;
    publicvariable "currentTowTruckDrivers";
 //   currentTowTruckDrivers ="";

};

if (_playeruid IN currentRepairmen) exitwith {
    _pia = currentRepairmen find _playeruid;
    currentRepairmen deleteAt _pia;
    publicvariable "currentRepairmen";
 //   currentRepairmen ="";

};

if (_playeruid IN currentNewsMan) exitwith {
    _pia = currentNewsMan find _playeruid;
    currentNewsMan deleteAt _pia;
    publicvariable "currentNewsMan";
 //   currentNewsMan ="";

};

if (_playeruid IN currentTrashMan) exitwith {
    _pia = currentTrashMan find _playeruid;
    currentTrashMan deleteAt _pia;
    publicvariable "currentTrashMan";
 //   currentTrashMan ="";

};

if (_playeruid IN currentmailmen) exitwith {
    _pia = currentmailmen find _playeruid;
    currentmailmen deleteAt _pia;
    publicvariable "currentmailmen";
 //   currentMailmen ="";

};

if (_playeruid IN currentTaxiDrivers) exitwith {
    _pia = currentTaxiDrivers find _playeruid;
    currentTaxiDrivers deleteAt _pia;
    publicvariable "currentTaxiDrivers";
//  currentTaxiDrivers ="";

};

if (_playeruid IN currentlegalaid) exitwith {
    _pia = currentlegalaid find _playeruid;
    currentlegalaid deleteAt _pia;
    publicvariable "currentlegalaid";
//    currentLegalAid ="";

};
if (_playeruid IN currentDoughnuts) exitwith {
    _pia = currentDoughnuts find _playeruid;
    currentDoughnuts deleteAt _pia;
    publicvariable "currentDoughnuts";

};

if (_playeruid IN currentPizzaFicker) exitwith {
    _pia = currentPizzaFicker find _playeruid;
    currentPizzaFicker deleteAt _pia;
    publicvariable "currentPizzaFicker";

};

if (_playeruid IN currentdimis) exitwith {
    _pia = currentdimis find _playeruid;
    currentdimis deleteAt _pia;
    publicvariable "currentdimis";

};