if(taskrunning) exitwith {hint "Du hast schon einen Job."; };
_data = lbData[9001,lbCurSel (9001)];
_data = call compile format["%1", _data];
_clientJobs = ["Wood Logging"];
if(_data IN _clientJobs) then {
	[_data] spawn client_fnc_startGenericJob;
} else {
	[player,_data] spawn client_fnc_jobStart;
};
closedialog 0;