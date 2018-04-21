addMissionEventHandler ["HandleDisconnect",{ _this spawn Server_fnc_statDisconnect; }];
//addMissionEventHandler["HandleDisconnect",{ _this [_this,getUnitLoadout _this] spawn Server_fnc_statSaveDisconnect; }];
//addMissionEventHandler ["HandleDisconnect",{_this call server_fnc_deleteDeadPlayers; false;}];