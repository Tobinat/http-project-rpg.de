disableSerialization;
_index = lbCurSel (1113);
if (_index == -1) exitWith {};
_status = lbData[1113, _index];
_status = call compile format["%1", _status];

[player] remoteexec ["client_fnc_GiveCallInformation",_status];
