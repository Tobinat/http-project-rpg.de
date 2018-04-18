mypos = _this select 0;

createDialog "garage2";

hint "Wybierz pojazd!";

ctrlSetText [1000, "Garage"];

_f1Cars = [
	"vvv_formula1_tmac",
	"vvv_formula1_sayeed",
	"vvv_formula1_Ciggy",
	"vvv_formula1_Doge",
	"vvv_formula1_ferrari",
	"vvv_formula1_mario",
	"vvv_formula1_marvel",
	"vvv_formula1_mclaren",
	"vvv_formula1_mingsucks",
	"vvv_formula1_netflix1",
	"vvv_formula1_netflix2",
	"vvv_formula1_fb",
	"vvv_formula1_andy",
	"vvv_formula1_redbull",
	"vvv_formula1_thad",
	"vvv_formula1_twitch"
];


{
	_vehicleName = [_x] call Client_fnc_getVehicleName;
	_veh = lbAdd [1500, format["%1",_vehicleName] ];
	lbSetData [1500, _veh, Str(_x)];

}forEach _f1cars;

lbSetCurSel [1500, 0];