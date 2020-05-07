createDialog "garage3";

ctrlSetText [1000, "Garage"];
_EMS = player getVariable ["ems",0];
_garage = [];

if(myJob == "EMS" || myJob == "Fire") then {
	_garage = [
				//"jonzie_ambulance"
				"PRPG_Jonzie_Ambulance1",
				"PRPG_Jonzie_Ambulance2"
			];
			if(_EMS > 1) then {
				_ret = [
					"Jonzie_Tow_Truck"
				];
				_garage = _garage + _ret;
			};
			if(_EMS > 2) then {
				_ret = [
					"red_explorer_16_e_ems",
					"vvv_fire_truck"
				];
				_garage = _garage + _ret;
			};
			if(_EMS > 3) then {
				_ret = [
					];
					if ((typeOF cursorTarget) find "Air_Garage_Off" > -1 ) then {
					_retheli = [
					"C_hh60j_unarmed_F"
					];
					_ret = _ret + _retheli;
					};
				_garage = _garage + _ret;
			};
			if(_EMS > 4) then {
				_ret = [
				];
				_garage = _garage + _ret;
			};
			if(_EMS > 5) then {
				_ret = [
					"red_suburban_15_e_ems",
					"red_suburban_15_e_ems2",
					"red_suburban_15_e_custom1"
				];
				_garage = _garage + _ret;
			};
			if(_EMS > 6) then {
				_ret = [
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
