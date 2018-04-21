{
    _messages = [];

    _cash = _x getVariable "sl_wallet_silverlake";
    _bank = _x getVariable "sl_atm_silverlake";

    _position = position _x;

	_items = getunitloadout _x;
	
    _uid = getplayerUID _x;

    _syncInfo = _x getVariable ["sync", 1];

    if(_syncInfo == 0 || _x in currentCop || _x in currentEMS || _x in currentFire) then { 
    _updatestr = format ["updatePlayerInfoNoGearNoShopNoHouse:%1:%2:%3:%4:%5", _cash, _bank, _position, _messages, _uid]; 
	_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;

} else { 
	_updatestr = format ["updatePlayerInfoNoShopNoHouse:%1:%2:%3:%4:%5:%6", _items, _cash, _bank, _position, _messages, _uid]; 
	_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
    };
	diag_log "server_fnc_statSaveLoop";
} forEach allPlayers;