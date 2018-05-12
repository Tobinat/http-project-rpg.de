disableSerialization;
if(!dialog) then {	createdialog "job_update"; };
uisleep 0.05;
_display = findDisplay 9999;
_list = _display displayCtrl 9001;
lbClear _list;
_i = 0;
{
	if(isPlayer _x) then {
		_i = _i + 1;
	};
} forEach playableUnits;
_count = [3,2,3,3,7,7,3];
if(_i > 50) then {
	if(_i > 80) then {
		_count = [7,6,7,7,13,13,6];
	} else {
		_count = [5,4,5,5,10,10,5];
	};
};

_jobs = [];

if(count currentMailmen < (_count select 0)) then {
_Jobs pushback ["Fedex Kurier","mail"]; 
};

if(count currentSecurity < (_count select 1)) then {
_Jobs pushback ["Security","security"]; 
};

if(count currentTrashman < (_count select 2)) then {
_Jobs pushback ["Müllabfuhr","trashman"]; 
};

if(count currentNewsMan < (_count select 3)) then {
_Jobs pushback ["Reporter","reporter"]; 
};

if(count currentRepairmen < (_count select 4)) then {
_Jobs pushback ["Mechaniker","repairman"]; 
};

if(count currentTaxiDrivers < (_count select 5)) then {
_Jobs pushback ["Taxifahrer","taxi"]; 
};

if(count currentPizzaFicker < (_count select 6)) then {
_Jobs pushback ["Pizza Lieferant","pizza"]; 
};

if(count currentTowTruckDrivers < (_count select 7)) then {
_Jobs pushback ["Abschlepper","Tow Truck Driver"]; 
};



if(_jobs isequalto []) then { _jobs = ["Keine Arbeit verfügbar"]; };

{
	_list lbAdd format["Arbeit: %1",_x select 0];
	_list lbSetdata [(lbSize _list)-1,str(_x select 1)];
} foreach _jobs;

_list lbAdd "Arbeit: Holzfäller";
_job = "Wood Logging";
_list lbSetdata [(lbSize _list)-1,str(_job)];

hint "Die meisten Firmen stellen dir ein Firmenwagen zur Verfügung. Verwende die Windowstaste und wähle die entsprechende Option aus.";

