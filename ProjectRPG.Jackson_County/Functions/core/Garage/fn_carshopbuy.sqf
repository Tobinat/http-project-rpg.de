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

_price = _price * mav_ttm_var_mechanicRent;



_cash = player getVariable "sl_wallet_silverlake";


if(_cash < _price) exitwith { [format["KOSZT: %1 - Za mało pieniędzy.",_price], true] spawn domsg; };


[_price] call Client_fnc_sl_removeCash_secure;



closedialog 0;

_vehicleName = getText(configFile >> "CfgVehicles" >> _class >> "displayName");
[player,1,format ["%1 kupił pojazd %2 za kwote %3", name player, _vehicleName, _price],_price,_class,_vehicleName] remoteExec ["server_fnc_vehicleLog", 2];
//[player, getUnitLoadout player] call Server_fnc_statSave;
["Pojazd zostanie dostarczony do Twojego garażu.", true] spawn domsg;
["VehicleBought"] spawn mav_ttm_fnc_addExp;

_player = player;
_rims = "antiquewhite";
_windows = 0;
_Lights = 0;
_owner = getplayeruid player;
_licensePlate = "Testing";

_statuses = 1;
[_licensePlate, _class, _color, _finish, _rims, _windows, _lights, _owner, _statuses, "Add", _player] remoteExec ["Server_fnc_garageUpdate",2];
