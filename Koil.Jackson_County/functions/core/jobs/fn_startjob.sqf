disableSerialization;
if(!dialog) then {	createdialog "job_update"; };
uisleep 0.05;
_display = findDisplay 9999;
_list = _display displayCtrl 9001;
lbClear _list;
//_jobs = _this select 0;

_jobs = [];

if(count currentMailmen < 3) then {
_Jobs pushback "Fedex Worker"; 
};

if(count currentSecurity < 2) then {
_Jobs pushback "Security"; 
};

if(count currentTrashman < 3) then {
_Jobs pushback "Garbage Man"; 
};

if(count currentNewsMan < 3) then {
_Jobs pushback "News Reporter"; 
};

if(count currentRepairmen < 7) then {
_Jobs pushback "Repairman"; 
};

if(count currentTaxiDrivers < 7) then {
_Jobs pushback "Taxi Driver"; 
};
if(_jobs isequalto []) then { _jobs = ["No Jobs Available"]; };

{
	_list lbAdd format["Job: %1",_x];
	_list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach _jobs;

_list lbAdd "Job: Wood Logging";
_job = "Wood Logging";
_list lbSetdata [(lbSize _list)-1,str(_job)];

hint "Remember, farming jobs require backpacks - most jobs come with a vehicle, you can access it by windows keying this building once you have a job.";

