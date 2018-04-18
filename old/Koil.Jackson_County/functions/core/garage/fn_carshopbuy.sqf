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


<<<<<<< HEAD
if(_cash < _price) exitwith { [format["COST: %1 - Nicht genügend Geld.",_price], true] spawn domsg; };
=======
if(_cash < _price) exitwith { [format["Kosten: %1 - Du hast nicht genug Geld.",_price], true] spawn domsg; };
>>>>>>> origin/master

[_price] call Client_fnc_removeCash;



closedialog 0;

<<<<<<< HEAD
["Das Fahrzeug wird demnächst zu Ihnen geliefert.", true] spawn domsg;
=======
["Das Fahrzeug wird bald an deine Adresse geliefert.", true] spawn domsg;
>>>>>>> origin/master

_player = player;
_rims = "antiquewhite";
_windows = 0;
_Lights = 0;
_owner = getplayeruid player;
_licensePlate = "Testing";

_statuses = 1;
[_licensePlate, _class, _color, _finish, _rims, _windows, _lights, _owner, _statuses, "Add", _player] remoteExec ["Server_fnc_garageUpdate",2];
