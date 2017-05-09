_index = lbCurSel (1500);
_status = lbData[1500, _index];
_SELECTEDVEHICLE = call compile format["%1", _status];
_class = _selectedvehicle select 0;
_price = _selectedvehicle select 1;

_index = lbCurSel (1501);
_status = lbData[1501, _index];
_color = call compile format["%1", _status];

_index = lbCurSel (1502);
_status = lbData[1502, _index];
_finish = call compile format["%1", _status];
_pricePaint = _finish select 1;
_finish = _finish select 0;

_price = _price + _pricePaint;



_cash = player getVariable "wallet";


if(_cash < _price) exitwith { [format["COST: %1 - Not enough cash.",_price], true] spawn domsg; };

[_price] call Client_fnc_removeCash;



closedialog 0;

["The vehicle will be delivered to your house soon.", true] spawn domsg;

_player = player; 
_rims = "antiquewhite"; 
_windows = 0; 
_Lights = 0; 
_owner = getplayeruid player; 
_licensePlate = "Testing"; 

_statuses = 1; 
[_licensePlate, _class, _color, _finish, _rims, _windows, _lights, _owner, _statuses, "Add", _player] remoteExec ["Server_fnc_garageUpdate",2];
