params["_player","_items"];
if(isNull _player) exitWith { diag_log "stepped sync - player null"; };
_player setVariable ["getunitloadout",_items,false];
_uid = getPlayerUID _player;

_messages = [];


_cash = _player getVariable "sl_wallet_silverlake";
_bank = _player getVariable "sl_atm_silverlake";
_position = position _player;
_syncInfo = _player getVariable ["sync",1];
_exit = false;
 
if(_syncInfo == 0 || _player in currentCop || _player in currentEMS || _player in currentFire) then { 
	_updatestr = format ["updatePlayerInfoNoGearNoShopNoHouse:%1:%2:%3:%4:%5", _cash, _bank, _position, _messages, _uid]; 
	_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
} else { 
	_updatestr = format ["updatePlayerInfoNoShopNoHouse:%1:%2:%3:%4:%5:%6", _items, _cash, _bank, _position, _messages, _uid]; 
	_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
}; 
