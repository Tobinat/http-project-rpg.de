createDialog "garage3";

ctrlSetText [1000, "Garage"];
_cop = player getVariable ["cop",0];

_garage = [];

if(myJob == "Cop") then {
		_garage = [
			"red_cvpi_06_p_sheriff",
			"red_cvpi_06_p_u_sheriff",
			"red_cvpi_06_p_u_traffic" 
		];
	if(_cop > 1) then {
		_ret = [
			"red_taurus_13_p_sheriff",
			"red_taurus_13_p_u_sheriff",
			"red_taurus_13_p_u_traffic" 
		];
		_garage = _garage + _ret;
	};
	if(_cop > 3) then {
		_ret = [
			"red_charger_12_p_sheriff",
			"red_charger_12_p_u_sheriff",
			"red_camaro_12_p_u_black",
			"red_suburban_15_p_f_custom1",
			"red_challenger_15_p_u_black"
		];
		_garage = _garage + _ret;
	};
	if(_cop > 4) then {
		_ret = [
			"red_suburban_15_p_sheriff",
			"red_suburban_15_p_u_sheriff"
		];
		_garage = _garage + _ret;
	};
	if(_cop > 5) then {
		_ret = [
			"red_charger_15_p_sheriff"
		];
		_garage = _garage + _ret;
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
