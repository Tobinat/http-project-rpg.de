[player] remoteExec ["client_fnc_revived",CurrentCursorTarget];
["Revived"] spawn mav_ttm_fnc_addExp;
[player,CurrentCursorTarget,9,format ["%1 reanimował %2", name player, name CurrentCursorTarget],""] remoteExec ["server_fnc_actionLog", 2];