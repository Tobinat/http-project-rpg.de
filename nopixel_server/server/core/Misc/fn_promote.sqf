_type = _this select 0; 
_player = _this select 1; 
_rank = _this select 2;  
_uidPlayer = getplayerUID _player; 
 
_type = toLower(_type);
if(_rank > 1) then {
	_updateSQL = "";
	switch(_type) do {
		case "cop": {_updateSQL = "promoteCop";};
		case "ems": {_updateSQL = "promoteEms";};
		case "fire": {_updateSQL = "promoteFire";};
		case "legal": {_updateSQL = "promoteLegal";};
		case "mafia": {_updateSQL = "promoteMafia";};
		default {_updateSQL = "";};
	};
	if(_updateSQL != "") then {
		_updatestr = format ["%1:%2:%3", _updateSQL, _rank, _uidplayer];
		_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery; 
		diag_log format ["Promoted %1 to %2 rank %3", _player, _type, _rank]; 
	} else {
		diag_log format ["Unkown faction: %1; Player: %2; Rank: %3", _type, _player, _rank];
	};
};
[_type,_rank] remoteExec ["client_fnc_setvariable",_player];