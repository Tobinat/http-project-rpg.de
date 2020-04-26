createDialog "garage3";

ctrlSetText [1000, "Garage"];

_garage = [];

if(myJob == "Cop") then {
		if (client_aiad_actions > 0) then {
		_garageMore = [

			];
			_garage = _garage + _garageMore;
			};
};


{
	_class = _x;
	_vehicleName = [_x] call Client_fnc_getVehicleName; 
	if((str CurrentCursorTarget find "embarcadero" > -1 ) && _class isKindOf "Ship" ) then {
		_veh = lbAdd [1500, format["%1",_vehicleName] ];
		lbSetData [1500, _veh, format["%1",Str(_x)]];
	} else {
		if !(_class isKindOf "Ship") then {
			_veh = lbAdd [1500, format["%1",_vehicleName] ];
			lbSetData [1500, _veh, format["%1",Str(_x)]];
		};
	};
}forEach _garage;

lbSetCurSel [1500, 0];




