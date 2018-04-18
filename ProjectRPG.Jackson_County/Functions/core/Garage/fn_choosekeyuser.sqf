disableSerialization;
_index = lbCurSel (1113);
if (_index == -1) exitWith {};
_status = lbData[1113, _index];
_status = call compile format["%1", _status];
closedialog 0;
sleep 0.05;
if(isNil "_status") exitwith { };

[current_cars] remoteexec ["client_fnc_givekeys",_status];