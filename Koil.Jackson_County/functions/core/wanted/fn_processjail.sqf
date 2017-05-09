_length = ctrlText 2222;
_reason = ctrlText 1111;

[_length, _reason,CurrentCursorTarget,true] remoteExec ["server_fnc_jailsetup",2];

closedialog 0;