_currentitemindex = lbCurSel 1120;
if (_currentitemindex == -1) exitWith {};
_status2 = lbData [1120, _currentitemindex];
closedialog 0;
[player] remoteexec ["client_fnc_licenseReturn",_status2];