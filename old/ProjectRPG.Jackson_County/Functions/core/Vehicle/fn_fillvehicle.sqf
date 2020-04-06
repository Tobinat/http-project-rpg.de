disableserialization;
closedialog 0;
createdialog "fillvehicle";

uisleep 0.05;
_display = findDisplay 1013;
_list = _display displayCtrl 1500;
lbClear _list;
_vehicles = nearestObjects [player, ["Car","Air","Ship"], 20];

{
	_vehicleName = [(typeof _x)] call Client_fnc_getVehicleName;
	_list lbAdd format["%1", _vehicleName];
	_list lbSetdata [(lbSize _list)-1,str([typeof _x,getpos _x])];
} foreach _vehicles;