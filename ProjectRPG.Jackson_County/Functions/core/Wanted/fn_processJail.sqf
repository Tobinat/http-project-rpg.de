_length = ctrlText 2222;
_reason = ctrlText 1111;
//[_length, _reason,CurrentCursorTarget,true] remoteExec ["server_fnc_jailsetup",2];
[currentCursorTarget, player, _length, _reason] remoteExec ["server_fnc_slpdPrisonInsert",2];

["Jailed"] spawn mav_ttm_fnc_addExp;
[player,currentcursortarget,4,format ["%1 verhaftete %2 für einen Zeitraum von: %3 .Mit dem Grund: %4", name player, name currentcursortarget, _length, _reason],_length] remoteExec ["server_fnc_copLog", 2];
closedialog 0;