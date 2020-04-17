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

if (getplayeruid _player IN currentPoliceDispatch) then {
	_pia = currentPoliceDispatch find getplayeruid _player;
	currentPoliceDispatch deleteAt _pia;
	publicvariable "currentPoliceDispatch";
};

if (getplayeruid _player IN currentMedicDispatch) then { 
	_pia = currentMedicDispatch find getplayeruid _player;
	currentMedicDispatch deleteAt _pia;
	publicvariable "currentMedicDispatch";
};

if (getplayeruid _player IN currentFireDispatch) then { 
	_pia = currentFireDispatch find getplayeruid _player;
	currentFireDispatch deleteAt _pia;
	publicvariable "currentFireDispatch";
};


if (getplayeruid _player IN currentCop) exitwith {
    _pia = currentCop find getplayeruid _player;
    currentCop deleteAt _pia;
    publicvariable "currentCop";
	//currentCop ="";
};

if (getplayeruid _player IN currentEMS) exitwith {
    _pia = currentEMS find getplayeruid _player;
    currentEMS deleteAt _pia;
    publicvariable "currentEMS";
   //currentEMS ="";
};

if (getplayeruid _player IN currentFire) exitwith {
    _pia = currentFire find getplayeruid _player;
    currentFire deleteAt _pia;
    publicvariable "currentFire";
    //currentFire = "";
};

if (getplayeruid _player IN currentMafia) exitwith {
    _pia = currentMafia find getplayeruid _player;
    currentMafia deleteAt _pia;
    publicvariable "currentMafia";
	//currentMafia = "";
};

if (getplayeruid _player IN currentLawyers) exitwith {
    _pia = currentLawyers find getplayeruid _player;
    currentLawyers deleteAt _pia;
    publicvariable "currentLawyers";
	//currentLawyers ="";
};

if (getplayeruid _player IN currentJudges) exitwith {
    _pia = currentJudges find getplayeruid _player;
    currentJudges deleteAt _pia;
    publicvariable "currentJudges";
	//currentJudges ="";
};

if (getplayeruid _player IN currentProsecutor) exitwith {
    _pia = currentProsecutor find getplayeruid _player;
    currentProsecutor deleteAt _pia;
    publicvariable "currentProsecutor";
	//currentProsecutor ="";
};

if (getplayeruid _player IN currentMailmen) exitwith {
    _pia = currentMailmen find getplayeruid _player;
    currentMailmen deleteAt _pia;
    publicvariable "currentMailmen";
//    currentMailmen ="";

};

if (getplayeruid _player IN currentsecurity) exitwith {
    _pia = currentsecurity find getplayeruid _player;
    currentsecurity deleteAt _pia;
    publicvariable "currentsecurity";
 //   currentsecurity ="";

};

if (getplayeruid _player IN currentTowTruckDrivers) exitwith {
    _pia = currentTowTruckDrivers find getplayeruid _player;
    currentTowTruckDrivers deleteAt _pia;
    publicvariable "currentTowTruckDrivers";
 //   currentTowTruckDrivers ="";

};

if (getplayeruid _player IN currentRepairmen) exitwith {
    _pia = currentRepairmen find getplayeruid _player;
    currentRepairmen deleteAt _pia;
    publicvariable "currentRepairmen";
 //   currentRepairmen ="";

};

if (getplayeruid _player IN currentNewsMan) exitwith {
    _pia = currentNewsMan find getplayeruid _player;
    currentNewsMan deleteAt _pia;
    publicvariable "currentNewsMan";
 //   currentNewsMan ="";

};

if (getplayeruid _player IN currentTrashMan) exitwith {
    _pia = currentTrashMan find getplayeruid _player;
    currentTrashMan deleteAt _pia;
    publicvariable "currentTrashMan";
 //   currentTrashMan ="";

};

if (getplayeruid _player IN currentmailmen) exitwith {
    _pia = currentmailmen find getplayeruid _player;
    currentmailmen deleteAt _pia;
    publicvariable "currentmailmen";
 //   currentMailmen ="";

};

if (getplayeruid _player IN currentTaxiDrivers) exitwith {
    _pia = currentTaxiDrivers find getplayeruid _player;
    currentTaxiDrivers deleteAt _pia;
    publicvariable "currentTaxiDrivers";
//  currentTaxiDrivers ="";

};

if (getplayeruid _player IN currentlegalaid) exitwith {
    _pia = currentlegalaid find getplayeruid _player;
    currentlegalaid deleteAt _pia;
    publicvariable "currentlegalaid";
//    currentLegalAid ="";

};
if (getplayeruid _player IN currentDoughnuts) exitwith {
    _pia = currentDoughnuts find getplayeruid _player;
    currentDoughnuts deleteAt _pia;
    publicvariable "currentDoughnuts";

};

if (getplayeruid _player IN currentPizzaFicker) exitwith {
    _pia = currentPizzaFicker find getplayeruid _player;
    currentPizzaFicker deleteAt _pia;
    publicvariable "currentPizzaFicker";

};

if (getplayeruid _player IN currentdimis) exitwith {
    _pia = currentdimis find getplayeruid _player;
    currentdimis deleteAt _pia;
    publicvariable "currentdimis";

};