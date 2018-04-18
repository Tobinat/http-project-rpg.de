_variable = _this select 0;
_new = _this select 1;

if ( _variable == "mafia" || _variable =="ems" || _variable =="cop" || _variable =="fire" ) then { hint format["Twoja ranga została zmieniona na %1 as %2",_new,_variable]; };

if(_variable == "garage") exitwith {
	_garage = player getVariable "garage";
	_garage pushback _new;
	player setVariable ["garage", _garage, false];
};


if(_variable == "usedgarage") exitwith {
	current_cars = _new;
	_garage = player getVariable "garage";
	_information = _this select 2;
	_garage pushback _information;
	player setVariable ["garage", _garage, false];
};

player setvariable [_variable, _new, false];
