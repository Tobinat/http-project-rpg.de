createDialog "garage3";

ctrlSetText [1000, "Garage"];
_EMS = player getVariable ["ems",0];
_garage = [];

if(myJob == "EMS" || myJob == "Fire") then {
	_garage = [
				"NP_Jonzie_Ambulance1",
				"NP_Jonzie_Ambulance2"
			];
			if(_EMS > 1) then {
				_ret = [
					"Ford_Raptor_17_FireTruck_V1",
					"Ford_Raptor_17_FireTruck_V2",
					"Ford_Raptor_17_FireTruck_V3"
				];
				_garage = _garage + _ret;
			};
			if(_EMS > 2) then {
				_ret = [
					"Ford_Crown_Medic_V1",
					"Ford_Crown_Medic_V2",
					"Ford_Crown_Medic_V3",
					"vvv_fire_truck"
				];
				_garage = _garage + _ret;
			};
			if(_EMS > 3) then {
				_ret = [
					"Dodge_Charger_06_Medic_V1",
					"Dodge_Charger_06_Medic_V2",
					"Dodge_Charger_06_Medic_V3",
					"Dodge_Charger_SRT8_2016_Medic_V1",
					"Dodge_Charger_SRT8_2016_Medic_V2",
					"Dodge_Charger_SRT8_2016_Medic_V3",
					"EC635_SAR",
					"C_hh60j_unarmed_F"
				];
				_garage = _garage + _ret;
			};
			if(_EMS > 4) then {
				_ret = [
					"Ford_Raptor_Medic_V1",
					"Ford_Raptor_Medic_V2",
					"Ford_Raptor_Medic_V3"
				];
				_garage = _garage + _ret;
			};
			if(_EMS > 5) then {
				_ret = [
					"Chevrolet_Tahoe_2015_Medic_V1",
					"Chevrolet_Tahoe_2015_Medic_V2",
					"Chevrolet_Tahoe_2015_Medic_V3"
				];
				_garage = _garage + _ret;
			};
			if(_EMS > 6) then {
				_ret = [
					"Porsche_Cayenne_12_Medic_slicktop_V1",
					"Porsche_Cayenne_12_Medic_slicktop_V2",
					"Porsche_Cayenne_12_Medic_slicktop_V3",
					"Porsche_Cayenne_12_Medic_V1",
					"Porsche_Cayenne_12_Medic_V2",
					"Porsche_Cayenne_12_Medic_V3"
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
