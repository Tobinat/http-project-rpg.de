disableSerialization;

_index = lbCurSel (911);
_status = lbData[911, _index];
_status = call compile format["%1", _status];

_newWanted = ctrlText 1400;
_newWanted = call compile format["%1", _newWanted];


[_status,_newWanted] remoteExec ["Server_fnc_wantedRemove",2];