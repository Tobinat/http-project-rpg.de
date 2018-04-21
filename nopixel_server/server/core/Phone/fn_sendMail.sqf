_type = _this select 0;
if(_type == "personal") exitWith {
	_receiver = _this select 1;
	_message = _this select 2;
	_player = _this select 3;
	_title = _this select 4;
	_player = name _player;
	_receiver = getplayeruid _receiver;
	_updatestr = format ["insertMail:%1:%2:%3:%4", _message, _title, _player, _receiver];
	_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
};
if(_type == "fotoradar") exitWith {
	_reciver = _this select 1;
	_message = _this select 2;
	_sender_name =_this select 3;
	_title = _this select 4;
	_reciver = getPlayerUID _receiver;
	_updatestr = format ["insertMail:%1:%2:%3:%4", _message, _title, _sender_name, _receiver];
	_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
};
