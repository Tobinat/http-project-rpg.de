

_player = _this select 0;
_jobtype = _this select 1;

if (str _jobtype find "Cop" > -1) exitwith {   
		[_player, 0, getplayeruid _player, 0] remoteexec ["Server_fnc_statSave",2];	
		[] spawn client_fnc_startCop;
		currentCop pushback _player;
		publicvariable "currentCop";
		["basic"] spawn client_fnc_setGear;

};

if (str _jobtype find "EMS" > -1) exitwith {  
		[_player, 0, getplayeruid _player, 0] remoteexec ["Server_fnc_statSave",2];		
		[] spawn client_fnc_startEMS;
		currentEMS pushback _player;
		publicvariable "currentEMS";
		["basic"] spawn client_fnc_setGear;
};

if (str _jobtype find "Fire" > -1) exitwith {  
		[_player, 0, getplayeruid _player, 0] remoteexec ["Server_fnc_statSave",2];		
		[] spawn client_fnc_startFire;
		currentFire pushback _player;
		publicvariable "currentFire";	
		["basic"] spawn client_fnc_setGear;
};

if (str _jobtype find "Mafia" > -1) exitwith {   
		[] spawn client_fnc_startMafia;
		currentMafia pushback _player;
		publicvariable "currentMafia";
};



if (str _jobtype find "Police Dispatch" > -1) exitwith {   
	[] spawn client_fnc_startDispatch;
	currentPoliceDispatch pushback _player;
	publicvariable "currentPoliceDispatch";
};

if (str _jobtype find "Medic Dispatch" > -1) exitwith {
	[] spawn client_fnc_startDispatch;
	currentMedicDispatch pushback _player;
	publicvariable "currentMedicDispatch";	
};

if (str _jobtype find "Fire Dispatch" > -1) exitwith {
	[] spawn client_fnc_startDispatch;
	currentFireDispatch pushback _player;
	publicvariable "currentFireDispatch";	
};

if (str _jobtype find "Fedex Worker" > -1) exitwith {
	[] spawn client_fnc_mailSystem;
	currentmailmen pushback _player;
	publicvariable "currentMailMen";	
};

if (str _jobtype find "Taxi Driver" > -1) exitwith {
	[] spawn client_fnc_startTaxi;
	currentTaxiDrivers pushback _player;
	publicvariable "currentTaxiDrivers";
};

if (str _jobtype find "Security" > -1) exitwith {
	[] spawn client_fnc_startSecurity;
	currentsecurity pushback _player;
	publicvariable "currentSecurity";	
};

if (str _jobtype find "Legal Aid" > -1) exitwith {
	[] spawn client_fnc_startLegalAid;
	currentlegalaid pushback _player;
	publicvariable "currentLegalAid";	
};

if (str _jobtype find "Lawyer" > -1) exitwith {
	[] spawn client_fnc_startLawyer;
	currentlawyers pushback _player;
	publicvariable "currentLawyers";
};

if (str _jobtype find "Judge" > -1) exitwith {
	[] spawn client_fnc_startJudge;	
	currentJudges pushback _player;
	publicvariable "currentJudges";
};

if (str _jobtype find "Tow Truck Driver" > -1) exitwith {
	[] spawn client_fnc_startTowTruck;
	currentTowTruckDrivers pushback _player;
	publicvariable "currentTowTruckDrivers";
};

if (str _jobtype find "Garbage Man" > -1) exitwith {
	[] spawn client_fnc_startGarbage;
	currentTrashMan pushback _player;
	publicvariable "currentTrashman";	
};

if (str _jobtype find "News Reporter" > -1) exitwith {
	[] spawn client_fnc_startNews;	
	currentNewsMan pushback _player;
	publicvariable "currentNewsMan";
};

if (str _jobtype find "Repairman" > -1) exitwith {	
	[] spawn client_fnc_startRepair;
	currentRepairmen pushback _player;
	publicvariable "currentRepairmen";	
};

