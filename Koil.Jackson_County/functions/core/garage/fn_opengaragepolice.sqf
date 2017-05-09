if(str CurrentCursorTarget find "tallerdepinturaabandonado" > -1 || str CurrentCursorTarget find "otros" > -1 || str CurrentCursorTarget find "garaje" > -1 ) then { createdialog "garageplates"; } else { createDialog "garage3"; };

ctrlSetText [1000, "Garage"];

_garage = [];

if(myJob == "Cop") then {
	_garage = ["ivory_suburban_unmarked","ivory_suburban_slicktop","ivory_suburban_marked","VVV_dodge_charger_black","VVV_dodge_charger_swat","VVV_dodge_charger_normal","B_Boat_Transport_01_F","C_Boat_Civil_01_F"];
	if(player getvariable "cop" > 7) then { _garage pushback "B_MRAP_01_hmg_F"; };
	if(player getvariable "cop" > 1) then { _garage pushback "MELB_H6M"; };
};
if(myJob == "EMS" || myJob == "Fire") then {
	_garage = ["C_hh60j_unarmed_F","VVV_dodge_charger_white","NP_Jonzie_Ambulance1","NP_Jonzie_Ambulance2","vvv_fire_truck","B_Boat_Transport_01_F","C_Boat_Civil_01_F"];
};
if(myJob == "Mafia") then {
_garage = ["VVV_Bentley_Continental_SS","VVV_Bentley_Arnage","VVV_Aston_Martin_1964_DB5","vvv_NewYacht","C_Boat_Civil_01_F"];
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




