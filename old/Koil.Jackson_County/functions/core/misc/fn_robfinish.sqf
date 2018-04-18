params["_cash"];

hint format["You took %1",_cash];

if(isNil "_cash") exitwith {};

if(_cash == 0) exitwith {};

[_cash] call Client_fnc_addCash;