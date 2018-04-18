createDialog "garage";

ctrlSetText [1000, "Garage"];

_garage = player getVariable "garage";

{
	_vehicleName = [(_x select 1)] call Client_fnc_getVehicleName;
	_Color = _x select 2;
	_license = _x select 0; 
	_availability = _x select 7;
	if(_availability == 0) then {
		_veh = lbAdd [1500, format["%2 %1 --- License: %3",_vehicleName, _color, _license] ];
		lbSetData [1500, _veh, format["%1",Str(_x)]];
	};
}forEach _garage;

lbSetCurSel [1500, 0];