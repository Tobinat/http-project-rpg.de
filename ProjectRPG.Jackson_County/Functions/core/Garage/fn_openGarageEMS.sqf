createDialog "garage3";

ctrlSetText [1000, "Garage"];

_garage = [];
	
if(myJob == "EMS" || myJob == "Fire") then {
	_garage = [
				"C_hh60j_unarmed_F",
				"ivory_isf_medic_rr",
				"NP_Jonzie_Ambulance1",
				"NP_Jonzie_Ambulance2",
				"np_Jonzie_Ambulancefire",
				"red_ambulance_08_EMS",
				"red_ambulance_08_EMSs",
				"red_suburban_15_e_EMS",
				"red_ambulance_08_SR",
				"red_ambulance_08_FD",
				"red_stretcher_e_e",
				//"red_ambulance_08_EMS",
				//"red_ambulance_08_FD",
				//"red_ambulance_08_SR",
				"vvv_fire_truck",
				"B_Boat_Transport_01_F",
				"C_Boat_Civil_01_F",
				"sl_tahoe_coastguard",
				"VVV_dodge_charger_medic",
				"VVV_DodgeDurango_medic",
				"ivory_suburban_ems",
				"FPIUEMS_01",
				"sl_impala_fire_fd",
				"ivory_isf_fd",
				"SL_MCP",
				"A3PL_Engine",
				"A3PL_Ladder",
				"A3PL_Rescue",
				"AM_Rescue",
				"nopixel_guardacostas",
				"kif_orca_ems",
				"kif_mh9_ems",
				"EC635_SAR",
				"sl_boat_fire"
			];
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




