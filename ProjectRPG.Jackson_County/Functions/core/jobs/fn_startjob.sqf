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
_count = [3,2,3,3,7,7];
if(_i > 50) then {
	if(_i > 80) then {
		_count = [7,6,7,7,13,13];
	} else {
		_count = [5,4,5,5,10,10];
	};
};

_jobs = [];

if(count currentMailmen < (_count select 0)) then {
_Jobs pushback ["Kurier Fedex","mail"]; 
};

if(count currentSecurity < (_count select 1)) then {
_Jobs pushback ["Ochrona","security"]; 
};

if(count currentTrashman < (_count select 2)) then {
_Jobs pushback ["Wywóz śmieci","trashman"]; 
};

if(count currentNewsMan < (_count select 3)) then {
_Jobs pushback ["Reporter wiadomości","reporter"]; 
};

if(count currentRepairmen < (_count select 4)) then {
_Jobs pushback ["Mechanik","repairman"]; 
};

if(count currentTaxiDrivers < (_count select 5)) then {
_Jobs pushback ["Taksowkarz","taxi"]; 
};
if(_jobs isequalto []) then { _jobs = ["Brak dostępnych prac"]; };

{
	_list lbAdd format["Praca: %1",_x select 0];
	_list lbSetdata [(lbSize _list)-1,str(_x select 1)];
} foreach _jobs;

_list lbAdd "Praca: Drwal";
_job = "Wood Logging";
_list lbSetdata [(lbSize _list)-1,str(_job)];

hint "Prace uprawne wymagają plecaka - Większość prac udostępnia Ci pojazd firmowy. Skorzystaj z niego naciskając Windows, a następnie wybierz odpowiednią opcję.";

