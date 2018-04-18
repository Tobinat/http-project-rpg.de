_data = lbData[911,lbCurSel (911)];
_rank = call compile format["%1", _data];
[myjob,CurrentCursorTarget,_rank] remoteExec ["server_fnc_promote",2];