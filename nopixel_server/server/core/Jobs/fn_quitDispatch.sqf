_player = _this select 0;
_playeruid = getPlayerUID _player;

if (_playeruid IN currentPoliceDispatch) then {
	_pia = currentPoliceDispatch find _player;
	currentPoliceDispatch deleteAt _pia;
	publicvariable "currentPoliceDispatch";
};

if (_playeruid IN currentMedicDispatch) then { 
	_pia = currentMedicDispatch find _player;
	currentMedicDispatch deleteAt _pia;
	publicvariable "currentMedicDispatch";
};

if (_playeruid IN currentFireDispatch) then { 
	_pia = currentFireDispatch find _player;
	currentFireDispatch deleteAt _pia;
	publicvariable "currentFireDispatch";
};