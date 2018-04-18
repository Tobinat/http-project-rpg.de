_garage = _this select 0;
["Udało się podmienić tablicę!", false] spawn domsg;

{
	_carcheck = _x;
	{
		_usecheck = _x getvariable "information";
		if(_carcheck isEqualTo _usecheck) then { _pia = _garage FIND _usecheck; _garage DELETEAT _pia; };
	} foreach current_cars;
}foreach _garage;

player setvariable ["garage",_garage,false];
[2000] call Client_fnc_sl_removeBank_secure;


//3049t098jt43