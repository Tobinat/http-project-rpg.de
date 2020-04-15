_player = _this select 0;
_jobtype = _this select 1;
_playeruid = getPlayerUID _player;

diag_log ["job starting %1 - %2", _player,_jobtype];

if (str _jobtype find "Cop" > -1) exitwith {
if(count currentCop < 10) then {
[_player, getUnitLoadout _player] call Server_fnc_statSave;
[] remoteExec ["client_fnc_startCop",_player];
_player setvariable ["sync",0,false];
currentCop pushback _playeruid;
publicvariable "currentCop";

} else {
"Zu viele im Dienst" remoteexec ["hint",_player];
};
};

if (str _jobtype find "EMS" > -1) exitwith {
if(count currentEMS < 10) then {
[_player, getUnitLoadout _player] call Server_fnc_statSave;
[] remoteExec ["client_fnc_startEMS",_player];
_player setvariable ["sync",0,false];
currentEMS pushback _playeruid;
publicvariable "currentEMS";
} else {

"Zu viele im Dienst" remoteexec ["hint",_player];
};
};

if (str _jobtype find "Fire" > -1) exitwith {
if(count currentFire < 10) then {
[_player, getUnitLoadout _player] call Server_fnc_statSave;
[] remoteExec ["client_fnc_startFire",_player];
_player setvariable ["sync",0,false];
currentFire pushback _playeruid;
publicvariable "currentFire";
} else {

"Zu viele im Dienst" remoteexec ["hint",_player];
};
};

if (str _jobtype find "Mafia" > -1) exitwith {
if(count currentMafia < 10) then {
[] remoteExec ["client_fnc_startMafia",_player];
currentMafia pushback _playeruid;
publicvariable "currentMafia";
} else {

"Zu viele im Dienst" remoteexec ["hint",_player]; 
};
};



if (str _jobtype find "Police Dispatch" > -1) exitwith {
[] remoteExec ["client_fnc_startDispatch",_player];
currentPoliceDispatch pushback _playeruid;
publicvariable "currentPoliceDispatch";

};

if (str _jobtype find "Medic Dispatch" > -1) exitwith {
[] remoteExec ["client_fnc_startDispatch",_player];
currentMedicDispatch pushback _playeruid;
publicvariable "currentMedicDispatch";

};

if (str _jobtype find "Fire Dispatch" > -1) exitwith {
[] remoteExec ["client_fnc_startDispatch",_player];
currentFireDispatch pushback _playeruid;
publicvariable "currentFireDispatch";

};

if (str _jobtype find "Fedex Worker" > -1) exitwith {
[] remoteExec ["client_fnc_mailSystem",_player];
currentmailmen pushback _playeruid;
publicvariable "currentMailMen";

};

if (str _jobtype find "Taxi Driver" > -1) exitwith {
[] remoteExec ["client_fnc_startTaxi",_player];
currentTaxiDrivers pushback _playeruid;
publicvariable "currentTaxiDrivers";

};

if (str _jobtype find "Security" > -1) exitwith {
[] remoteExec ["client_fnc_startSecurity",_player];
currentsecurity pushback _playeruid;
publicvariable "currentSecurity";

};

if (str _jobtype find "Legal Aid" > -1) exitwith {
[] remoteExec ["client_fnc_startLegalAid",_player];
currentlegalaid pushback _playeruid;
publicvariable "currentLegalAid";

};

if (str _jobtype find "Lawyer" > -1) exitwith {
[] remoteExec ["client_fnc_startLawyer",_player];
currentlawyers pushback _playeruid;
publicvariable "currentLawyers";

};

if (str _jobtype find "Judge" > -1) exitwith {
[] remoteExec ["client_fnc_startJudge",_player];
currentJudges pushback _playeruid;
publicvariable "currentJudges";

};

if (str _jobtype find "Prosecutor" > -1) exitwith {
[] remoteExec ["client_fnc_startProsecutor",_player];
currentProsecutor pushback _playeruid;
publicvariable "currentProsecutor";

};

if (str _jobtype find "Tow Truck Driver" > -1) exitwith {
[] remoteExec ["client_fnc_startTowTruck",_player];
currentTowTruckDrivers pushback _playeruid;
publicvariable "currentTowTruckDrivers";

};

if (str _jobtype find "Garbage Man" > -1) exitwith {
[] remoteExec ["client_fnc_startGarbage",_player];
currentTrashMan pushback _playeruid;
publicvariable "currentTrashman";

};

if (str _jobtype find "News Reporter" > -1) exitwith {
[] remoteExec ["client_fnc_startNews",_player];
currentNewsMan pushback _playeruid;
publicvariable "currentNewsMan";

};

if (str _jobtype find "Repairman" > -1) exitwith {
[] remoteExec ["client_fnc_startRepair",_player];
currentRepairmen pushback _playeruid;
publicvariable "currentRepairmen";

};

if (str _jobtype find "pizza" > -1) exitwith {
[] remoteExec ["client_fnc_startPizza",_player];
currentPizzaFicker pushback _playeruid;
publicvariable "currentPizzaFicker";

};

if (str _jobtype find "busdriver" > -1) exitwith {
[] remoteExec ["client_fnc_startbusding",_player];
currentdimis pushback _playeruid;
publicvariable "currentdimis";

};