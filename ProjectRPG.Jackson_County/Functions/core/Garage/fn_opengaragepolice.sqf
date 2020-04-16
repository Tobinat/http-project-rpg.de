createDialog "garage3";

ctrlSetText [1000, "Garage"];
_cop = player getVariable ["cop",0];

_garage = [];

if(myJob == "Cop") then {
		_garage = [
			//"A3F_Ford_Crown_Police_V1"
			"PRPG_Charger_Sheriff_01",
			"PRPG_Charger_DOC_01"
		];
	if(_cop > 1) then {
		_ret = [
			//"A3F_Ford_Taurus_P_TL_V1",
			//"Ford_Raptor_Police_V1"
			"PRPG_Durango_Sheriff_01",
			"ivory_wrx_marked"
		];
		_garage = _garage + _ret;
	};
	if(_cop > 2) then {
		_ret = [
			//"A3F_Chevrolet_Tahoe_2013_P_TL_V1",
			//"A3F_Charger_RT_15_Police_V1",
			//"Chevrolet_Tahoe_2015_POLICE_V1"
		];
		_garage = _garage + _ret;
	};
	if(_cop > 3) then {
		_ret = [
			//"Dodge_Charger_06_Unmarked_V1",
			//"Ford_Crown_Unmarked_V1"
			"ivory_wrx_swat"
		];
		_garage = _garage + _ret;
	};
	if(_cop > 4) then {
		_ret = [
			//"Chevrolet_Camaro_ZL1_Police_V1",
			//"Dodge_Charger_06_Police_V1",
			//"Dodge_Charger_SRT8_Hellcat_Police_V1"
		];
		_garage = _garage + _ret;
	};
	if(_cop > 7) then {
		_ret = [
			//"A3F_TT_RS_10_P_TL_V1",
			//"Porsche_Cayenne_12_Police_unmarked_V1"
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
