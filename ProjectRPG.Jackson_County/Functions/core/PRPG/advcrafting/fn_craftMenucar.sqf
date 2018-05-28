/*
	File: fn_craftMenu.sqf

	array numbers are:
	["NP_Wood","np_copperbar1","np_ironbar1","np_silverbar1","CG_OilCanister"];
*/
disableSerialization;
private["_cost","_error","_materialsteile","_materialsautos","_n","_i","_MaterialClasses","_PricesMaterialClasses","_carClasses","_PricesCarClasses","_classStatus","_player","_licensePlate","_class","_color","_finish","_rims","_windows","_Lights","_owner","_selectedweapon"];

_status = lbData[1113,lbCurSel (1113)];
_status = call compile format["%1", _status];

_mainMenus = ["Autoteile","Fahrzeuge"];

_materialsteile = ["np_ironbar1","prpg_item_aluminium_bar","prpg_item_gummi","prpg_item_eisenstange","prpg_item_stoff","prpg_item_blei_bar","prpg_item_schwefel_ore","NP_Pelt","prpg_item_glas"];
_materialsautos = ["prpg_item_motor","prpg_item_sportmotor","prpg_item_karosserie","prpg_item_reifen","prpg_item_auspuff","prpg_item_airbag","prpg_item_batterie","prpg_item_stoffsitz","prpg_item_ledersitz","prpg_item_autotur","prpg_item_windschutzscheibe","prpg_item_glas","prpg_item_eisenstange"];


_MaterialClasses = [
	"prpg_item_motor",
	"prpg_item_sportmotor",
	"prpg_item_karosserie",
	"prpg_item_reifen",
	"prpg_item_auspuff",
	"prpg_item_airbag",
	"prpg_item_batterie",
	"prpg_item_stoffsitz",
	"prpg_item_ledersitz",
	"prpg_item_autotur",
	"prpg_item_windschutzscheibe"
];

_PricesMaterialClasses = [
	//prpg_item_motor
	[20,0,10,8,0,0,0,0,0],
	//prpg_item_sportmotor
	[50,0,20,12,0,0,0,0,0],
	//prpg_item_karosserie
	[5,15,0,0,0,0,0,0,0],
	//prpg_item_reifen
	[0,5,3,0,0,0,0,0,0],
	//prpg_item_auspuff
	[3,0,0,0,0,0,0,0,0],
	//prpg_item_airbag
	[0,0,0,0,4,0,0,0,0],
	//prpg_item_batterie
	[2,0,0,0,0,2,2,0,0],
	//prpg_item_stoffsitz
	[0,0,0,4,6,0,0,0,0],
	//prpg_item_ledersitz
	[0,0,0,4,0,0,0,6,0],
	//prpg_item_autotur
	[0,4,0,0,0,0,0,0,0],
	//prpg_item_windschutzscheibe
	[0,0,2,0,0,0,0,0,4]
];

if (mav_ttm_var_autocrafting == 1) then {
	_carClasses = [
		"vvv_Audi_RS6_Avant_C6",
		"Ford_F350_XLT_SuperDuty_Black",
		"Ford_Raptor_17_Black",
		"A3F_BMW_M5_F10_12_Back",
		"vvv_Audi_Q7",
		"CadillacEldorado1959_Black"
	];
};

if (mav_ttm_var_autocrafting == 2) then {
	_carClasses = [
		"vvv_Audi_RS6_Avant_C6",
		"Ford_F350_XLT_SuperDuty_Black",
		"Ford_Raptor_17_Black",
		"A3F_BMW_M5_F10_12_Back",
		"vvv_Audi_Q7",
		"CadillacEldorado1959_Black",
		"A3F_X5_11_Black",
		"BMW_X6_Black",
		"ivory_wrx",
		"ivory_evox",
		"ivory_supra",
		"VVV_Aston_Martin_1964_DB5"
	];
};

if (mav_ttm_var_autocrafting == 3) then {
	_carClasses = [
		"vvv_Audi_RS6_Avant_C6",
		"Ford_F350_XLT_SuperDuty_Black",
		"Ford_Raptor_17_Black",
		"A3F_BMW_M5_F10_12_Back",
		"vvv_Audi_Q7",
		"CadillacEldorado1959_Black",
		"A3F_X5_11_Black",
		"BMW_X6_Black",
		"ivory_wrx",
		"ivory_evox",
		"ivory_supra",
		"VVV_Aston_Martin_1964_DB5",
		"ivory_r8",
		"ivory_r8_spyder",
		"A3F_911_GT2_Black",
		"Porsche_Cayenne_12_Black",
		"A3F_Benz_G65_AMG_Black",
		"Nissan_370Z_Black",
		"A3F_Nissan_GTR_12_Black"
	];
};

if (mav_ttm_var_autocrafting == 4) then {
	_carClasses = [
		"vvv_Audi_RS6_Avant_C6",
		"Ford_F350_XLT_SuperDuty_Black",
		"Ford_Raptor_17_Black",
		"A3F_BMW_M5_F10_12_Back",
		"vvv_Audi_Q7",
		"CadillacEldorado1959_Black",
		"A3F_X5_11_Black",
		"BMW_X6_Black",
		"ivory_wrx",
		"ivory_evox",
		"ivory_supra",
		"VVV_Aston_Martin_1964_DB5",
		"ivory_r8",
		"ivory_r8_spyder",
		"A3F_911_GT2_Black",
		"Porsche_Cayenne_12_Black",
		"A3F_Benz_G65_AMG_Black",
		"Nissan_370Z_Black",
		"A3F_Nissan_GTR_12_Black",
		"Mercedes_Benz_SL65_Black",
		"Jaguar_XKRS_12_Black",
		"vvv_Aston_Martin_DB9"
	];
};

if (mav_ttm_var_autocrafting == 5) then {
	_carClasses = [
		"vvv_Audi_RS6_Avant_C6",
		"Ford_F350_XLT_SuperDuty_Black",
		"Ford_Raptor_17_Black",
		"A3F_BMW_M5_F10_12_Back",
		"vvv_Audi_Q7",
		"CadillacEldorado1959_Black",
		"A3F_X5_11_Black",
		"BMW_X6_Black",
		"ivory_wrx",
		"ivory_evox",
		"ivory_supra",
		"VVV_Aston_Martin_1964_DB5",
		"ivory_r8",
		"ivory_r8_spyder",
		"A3F_911_GT2_Black",
		"Porsche_Cayenne_12_Black",
		"A3F_Benz_G65_AMG_Black",
		"Nissan_370Z_Black",
		"A3F_Nissan_GTR_12_Black",
		"Mercedes_Benz_SL65_Black",
		"Jaguar_XKRS_12_Black",
		"vvv_Aston_Martin_DB9",
		"Rolls_Roxce_Dawn_Black",
		"Chevrolet_Camaro_ZL1_13_Black",
		"ivory_lp560",
		"ivory_mp4",
		"ivory_f1",
		"ivory_rev",
		"ivory_ccx",
		"ivory_veryon",
		"Aston_Martin_Vanquish_13_Black",
		"vvv_Aston_Martin_Rapide",
		"A3F_Corvette_Stingray_14_Black"
	];
};

_PricesCarClasses = [
	//vvv_Audi_RS6_Avant_C6
	[1,0,3,4,1,2,1,4,0,4,1,7,0],
	//Ford_F350_XLT_SuperDuty_Black
	[1,0,7,4,1,2,1,5,0,2,1,6,0],
	//Ford_Raptor_17_Black
	[1,0,6,4,1,2,1,5,0,4,1,6,0],
	//A3F_BMW_M5_F10_12_Back
	[1,0,3,4,1,2,1,5,0,4,1,7,0],
	//vvv_Audi_Q7
	[1,0,4,4,1,2,1,5,0,4,1,7,0],
	//CadillacEldorado1959_Black
	[1,0,3,4,1,2,1,4,0,2,1,0,0],
	//A3F_X5_11_Black
	[1,0,4,4,1,2,1,5,0,4,1,7,0],
	//BMW_X6_Black
	[1,0,4,4,1,2,1,0,5,4,1,7,0],
	//ivory_wrx
	[1,0,3,4,1,2,1,4,0,4,1,5,0],
	//ivory_evox
	[1,0,3,4,1,2,1,5,0,4,1,5,0],
	//ivory_supra
	[1,0,3,4,1,2,1,4,0,2,1,3,0],
	//VVV_Aston_Martin_1964_DB5
	[1,0,3,4,1,2,1,0,4,2,1,5,0],
	//ivory_r8
	[0,1,3,4,1,2,1,2,0,2,1,3,0],
	//ivory_r8_spyder
	[0,1,3,4,1,2,1,0,2,2,1,0,0],
	//A3F_911_GT2_Black
	[0,1,3,4,1,2,1,0,2,2,1,3,4],
	//Porsche_Cayenne_12_Black
	[1,0,4,4,1,2,1,0,5,4,1,7,0],
	//A3F_Benz_G65_AMG_Black
	[0,1,5,4,1,2,1,0,5,4,1,7,0],
	//Nissan_370Z_Black
	[0,1,3,4,1,2,1,0,1,2,1,3,2],
	//A3F_Nissan_GTR_12_Black
	[0,1,3,4,1,2,1,0,4,2,1,3,0],
	//Mercedes_Benz_SL65_Black
	[0,1,3,4,1,2,1,0,4,2,1,3,0],
	//Jaguar_XKRS_12_Black
	[0,1,3,4,1,2,1,0,4,2,1,3,0],
	//vvv_Aston_Martin_DB9
	[0,1,3,4,1,2,1,0,4,2,1,3,0],
	//Rolls_Roxce_Dawn_Black
	[0,1,2,4,1,2,1,0,4,2,1,0,0],
	//Chevrolet_Camaro_ZL1_13_Black
	[0,1,3,4,1,2,1,0,4,2,1,3,0],
	//ivory_lp560
	[0,1,3,4,1,2,1,0,2,2,1,3,0],
	//ivory_mp4
	[0,1,3,4,1,2,1,0,2,2,1,3,0],
	//ivory_f1
	[0,1,4,4,1,2,1,0,3,2,1,3,0],
	//ivory_rev
	[0,1,3,4,1,2,1,0,2,2,1,5,0],
	//ivory_ccx
	[0,1,3,4,1,2,1,0,2,2,1,3,0],
	//ivory_veryon
	[0,1,3,4,1,2,1,0,2,2,1,3,0],
	//Aston_Martin_Vanquish_13_Black
	[0,1,3,4,1,2,1,0,4,2,1,3,0],
	//vvv_Aston_Martin_Rapide
	[0,1,3,4,1,2,1,0,2,4,1,5,0],
	//A3F_Corvette_Stingray_14_Black
	[0,1,3,4,1,2,1,0,2,2,1,3,0]
];

uisleep 0.05;

_display = findDisplay 1111;

if((_this select 0) == "REFRESH") exitwith {

	if(isNil "_status") exitwith {};

	if(_status IN _MaterialClasses) then {
		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _MaterialClasses;
		
		_selectedWeapon = (configfile >> "CfgMagazines" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.

		_myArray = _PricesMaterialClasses select _mySelect;

		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["<t color='#33CC33'> %1 <t color='#ffffff'> <br/> Eisenbarren: %2 <br/> Aluminium Barren: %3 <br/> Gummi: %4 <br/> Eisenstange: %5 <br/> Stoff: %6 <br/> Bleibarren: %7 <br/> Schwefel: %8 <br/> Leder: %9 <br/> Glas: %10 <br/>",_selectedWeapon,(_myArray select 0),(_myArray select 1),(_myArray select 2),(_myArray select 3),(_myArray select 4),(_myArray select 5),(_myArray select 6),(_myArray select 7),(_myArray select 8)];
		_btn4 ctrlCommit 0;
	};

	if(_status IN _carClasses) then {
		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _carClasses;
		
		_selectedWeapon = (configfile >> "CfgVehicles" >> _x >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.
		
		_myArray = _PricesCarClasses select _mySelect;

		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["<t color='#33CC33'> %1 <t color='#ffffff'> <br/> Motor: %2 <br/> Sportmotor: %3 <br/> Karosserieteile: %4 <br/> Räder: %5 <br/> Auspuff: %6 <br/> Airbag: %7 <br/> Batterie: %8 <br/> Stoffsitz: %9 <br/> Ledersitz: %10 <br/> Autotür: %11 <br/> Windschutzscheibe: %12 <br/> Glas: %13 <br/> Eisenstange: %14 <br/>",_selectedWeapon,(_myArray select 0),(_myArray select 1),(_myArray select 2),(_myArray select 3),(_myArray select 4),(_myArray select 5),(_myArray select 6),(_myArray select 7),(_myArray select 8),(_myArray select 9),(_myArray select 10),(_myArray select 11),(_myArray select 12)];
		_btn4 ctrlCommit 0;
	};
};






_Btn2 = _display displayCtrl 1116;
_Btn3 = _display displayCtrl 1117;
_Btn5 = _display displayCtrl 1118;


_btn2 ctrlShow false;
_btn3 ctrlShow false;
_btn5 ctrlShow false;

_list = _display displayCtrl 1113;

lbClear _list;

if((_this select 0) == "FRESH") exitwith {

	_btn3 ctrlShow true;

	{
		_list lbAdd _x;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _mainMenus;


};

if(isNil "_status") exitwith { hint "Error with Selection!"; };


	_btn2 ctrlShow true;
	_btn5 ctrlShow true;

if(_status == "Autoteile") exitwith {

	{
		_selectedweapon = (configfile >> "CfgMagazines" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _MaterialClasses;

};

if(_status == "Fahrzeuge") exitwith {

	{
		_selectedweapon = (configfile >> "CfgVehicles" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _carClasses;

};

if(isNil "shopholder") then {
	shopholder = "plp_ct_woodboxlightsmall" createVehicleLocal (getpos player);
};

if((_this select 0) == "CRAFT") exitwith {

	if(_status IN _MaterialClasses) then {
		_count = _MaterialClasses FIND _status;
		_cost = _PricesMaterialClasses select _count;
	};

	if(_status IN _carClasses) then {
		_count = _carClasses FIND _status;
		_cost = _PricesCarClasses select _count;
	};


if(_status IN _MaterialClasses) then {

	_error = false;
	_n = 0;
	{

		_materialCheck = _materialsteile select _n;
		_checkCost = _cost select _n;

		_amountcurrent = {_x == (_materialsteile select _n)} count magazines player;
		if(_amountcurrent < _checkCost) exitwith { hint "Nicht ausreichend Ressourcen"; _error = true; };
		_n = _n + 1;

	} foreach _cost;

	if(_error) exitwith {};


	_n = 0;
	{
		_checkCost = _cost select _n;
		_i = _checkCost;

		while{ _i > 0 } do {
			player removeitem (_materialsteile select _n);
			_i = _i - 1;
		};

		_n = _n + 1;
	} foreach _cost;


 } else {

	_error = false;
	_n = 0;
	{

		_materialCheck = _materialsautos select _n;
		_checkCost = _cost select _n;

		_amountcurrent = {_x == (_materialsautos select _n)} count magazines player;
		if(_amountcurrent < _checkCost) exitwith { hint "Nicht ausreichend Ressourcen"; _error = true; };
		_n = _n + 1;

	} foreach _cost;

	if(_error) exitwith {};


	_n = 0;
	{
		_checkCost = _cost select _n;
		_i = _checkCost;

		while{ _i > 0 } do {
			player removeitem (_materialsautos select _n);
			_i = _i - 1;
		};

		_n = _n + 1;
	} foreach _cost;

};

if(_error) exitwith {};

	playSound3D ["CG_Jobs\sounds\sawing\saw.ogg", player, false, getPosasl player, 4, 1, 15];

	if(_status IN _MaterialClasses) then {
		shopholder additemCargoGlobal [_status,1];
		_classStatus = _status;
		_namendings = (configfile >> "CfgMagazines" >> _status >> "displayName") call BIS_fnc_getCfgData;
		
		player disablecollisionwith shopholder;
		shopholder setpos (getposATL player);
	
	} else {
	/*
		_classStatus = _status;
		_player = player;
		_licensePlate = "Testing";
		_class = _status;
		_color = "black";
		_finish = "Metallic";
		_rims = "antiquewhite";
		_windows = 0;
		_Lights = 0;
		_owner = getplayeruid player;
		[_licensePlate, _class, _color, _finish, _rims, _windows, _lights, _owner, _statuses, "Add", _player] remoteExec ["Server_fnc_garageUpdate",2];
	*/
		["Testing", _status, "black", "Metallic", "antiquewhite", 0, 0, (getPlayerUID player), 1, "Add", player] remoteExec ["Server_fnc_garageUpdate",2]; 

		
		_namendings = (configfile >> "CfgVehicles" >> _status >> "displayName") call BIS_fnc_getCfgData;
	};

	hint format["Du hast eine %1 hergestellt",_namendings];
	[player,1,format ["%1 hat eine %2 hergestellt", name player, _status],_classStatus,_namendings] remoteExec ["server_fnc_craftLog", 2];
	closedialog 0;
};

if((_this select 0) == "CRAFTMAG") exitwith {
	["Magazine für Autos Craften? Dein fucking ernst?! Sie sind offiziel dumm.",true] spawn domsg;
	closedialog 0;
};

closedialog 0;