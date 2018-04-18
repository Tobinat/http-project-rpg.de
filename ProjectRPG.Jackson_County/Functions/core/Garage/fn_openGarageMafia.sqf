createDialog "garage3";

ctrlSetText [1000, "Garage"];

_garage = [];

if(myJob == "Mafia") then {
_garage = [
	"VVV_Bentley_Continental_SS",
	"VVV_Bentley_Arnage",
	"VVV_Aston_Martin_1964_DB5",
	"sl_suburban_15_black",
	"sl_s65_12_black",
	"vvv_NewYacht",
	"C_Boat_Civil_01_F"
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




