/*
	File: fn_craftMenu.sqf

	array numbers are:
	["NP_Wood","np_copperbar1","np_ironbar1","np_silverbar1","CG_OilCanister"];
*/
disableSerialization;
private["_cost","_error","_materials","_n","_i","_iMafiaClasses"];

_status = lbData[1113,lbCurSel (1113)];
_status = call compile format["%1", _status];

_mainMenus = ["Pistols","Large Weapons","Items","Clothing","Quality Clothing"];

_materials = ["NP_Wood","np_copperbar1","np_ironbar1","np_silverbar1","CG_OilCanister"];


_PistolClasses = [
	"hgun_Pistol_heavy_01_F",
	"hgun_ACPC2_F",
	"RH_uspm",
	"RH_kimber",
	"RH_fn57",
	"RH_fnp45",
	"RH_Deagleg",
	"RH_Deagles"
];

_PricesPistolClasses = [
	//4-five .45 ACP
	//hgun_Pistol_heavy_01_F
	[3,0,2,0,0],

	//ACP-C2 .45 ACP
	//hgun_ACPC2_F
	[3,2,0,0,0],

	//USP40 Match
	//RH_uspm
	[3,0,0,1,2],

	//Kimber Desert Warrior
	//RH_kimber
	[3,1,0,0,2],

	//FN Five-Seven
	//RH_fn57
	[3,1,0,0,2],

	//FNP45 Tactical
	//RH_fnp45
	[3,0,1,0,3],

	//Desert Eagle Gold
	//RH_Deagleg
	[3,0,5,0,7],

	//Desert Eagle Silver
	//RH_Deagles
	[3,5,0,1,7]
];

_PistolMags = [2,1,0,0,0];


if(myJob == "Mafia" && player getVariable ["Mafia",0] > 4) then {

	_iMafiaClasses = [
		//Pistols
		"RH_g18",
		"RH_tec9",
		"RH_muzi",
		"RH_bull",
		"hlc_smg_mp5k"
	];


} else {

	_iMafiaClasses = [
		//Pistols
		"RH_g18",
		"RH_tec9",
		"RH_muzi",
		"RH_bull",
		"hlc_smg_mp5k"
	];

};


_iPricesMafiaClasses = [
	//RH_g18
	[2,3,0,3,11],
	//RH_tec9
	[1,0,2,1,7],
	//RH_muzi
	[0,2,0,1,8],
	//RH_bull
	[0,2,0,6,4],
	//hlc_smg_mp5k
	[0,4,4,6,6]
];
_iMafiaMags = [5,2,2,2,2];






_itemList = [
	"NP_DrugTable",
	"NP_GrowingPlot",
	"CG_Dynamite",
	"CG_C4",
	"CG_Engine",
	"CG_wheel",
	"CG_HackingTool",
	"CG_Lockpick",
	"NP_drillitem"
];


_PricesItemList = [
	[4,1,2,1,10],
	[15,1,0,0,0],
	[10,1,0,0,2],
	[0,3,5,5,5],
	[0,5,0,1,2],
	[0,1,0,0,1],
	[1,1,10,8,7],
	[2,5,0,0,0],
	[0,7,1,1,1],
	[3,1,4,2,8]
];


_clothing1 = [
		"EF_HM_LPBPS",
		"EF_HM_LPBP",
		"EF_HM_LPBR",
		"EF_HM_LPBW",
		"EF_HM_LPB",
		"EF_HM_LPBL",
		"EF_HM_LPBPS2",
		"EF_HM_LPBP2",
		"EF_HM_LPBR2",
		"EF_HM_LPBW2",
		"EF_HM_LPB2",
		"EF_HM_LPBL2",
		"TRYK_U_B_PCUGs_BLK_R",
		"TRYK_U_B_PCUGs_gry_R",
		"TRYK_U_B_PCUGs_OD_R",
		"TRYK_U_B_wh_blk_Rollup_CombatUniform",
		"TRYK_shirts_DENIM_BK",
		"TRYK_shirts_DENIM_BL",
		"TRYK_shirts_DENIM_BWH",
		"TRYK_shirts_DENIM_R",
		"TRYK_shirts_DENIM_RED2",
		"TRYK_shirts_DENIM_WHB",
		"TRYK_shirts_DENIM_ylb",
		"TRYK_U_denim_hood_blk",
		"TRYK_U_taki_G_BLK",
		"TRYK_U_taki_G_COY",
		"EF_suit_1",
		"EF_suit_2",
		"EF_suit_3",
		"EF_suit_4",
		"EF_suit_5",
		"EF_suit_6",
		"EF_FEM_2U",
		"EF_FEM_2BK",
		"EF_FEM_3_2",
		"EF_FEM_3_3LPBPS",
		"EF_FEM_3_3LPBP",
		"EF_FEM_3_3LPBR",
		"EF_FEM_3_3LPBW",
		"EF_FEM_3_3LPB",
		"EF_FEM_3_3LPBL",
		"EF_FEM_3_3LPBPS2",
		"EF_FEM_3_3LPBP2",
		"EF_FEM_3_3LPBR2",
		"EF_FEM_3_3LPBW2",
		"EF_FEM_3",
		"EF_FEM_4",
		"EF_FEM_4_2LPBPS",
		"EF_FEM_4_2LPBP",
		"EF_FEM_4_2LPBR",
		"EF_FEM_4_2LPBW",
		"EF_FEM_4_2LPB",
		"EF_FEM_4_2LPBPS2",
		"EF_FEM_4_2LPBP2",
		"EF_FEM_5",
		"EF_FEM_6",
		"EF_FEM_3_42",
		"vvv_character_wandelina",
		"vvv_character_jennifer"
];

_clothing2 = [
		"vvv_character_rock1",
		"vvv_character_rock2",
		"vvv_character_rock3",
		"vvv_character_rock4",
		"vvv_traje_jackoy",
		"vvv_traje_motox_02",
		"vvv_traje_motox_02_2",
		"vvv_traje_motox_02_3",
		"vvv_traje_motox_02_4",
		"vvv_traje_motox_02_5",
		"vvv_traje_motox_02_6",
		"vvv_traje_motox_02_7",
		"vvv_traje_motox_02_8",
		"vvv_character_sport",
		"vvv_character_sport_2",
		"vvv_character_sport_3",
		"vvv_character_sport_4",
		"vvv_character_sport_5",
		"vvv_character_sport_6",
		"vvv_character_sport_7",
		"vvv_character_sport_8",
		"vvv_character_sport_9",
		"vvv_character_sport_10",
		"vvv_character_sport_11",
		"vvv_character_sport_12",
		"vvv_character_sport_13",
		"TRYK_HRP_USMC",
		"TRYK_HRP_khk",
		"U_mas_ww2_B_CombatUniform_us",
		"np_sleeve_common_1",
		"np_shortsleeve_common_1",
		"vvv_traje_ejecutivo_1",
		"vvv_character_messi",
		"vvv_traje_romano"
	];





uisleep 0.05;

_display = findDisplay 1111;

if((_this select 0) == "REFRESH") exitwith {

	if(isNil "_status") exitwith {};

	if(_status IN _pistolClasses) then {
		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _PistolClasses;
		_selectedWeapon = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.

		_myArray = _PricesPistolClasses select _mySelect;
		_mags = _PistolMags;
		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["<t color='#33CC33'> %1 <t color='#ffffff'> <br/> Holz: %2 <br/> Kupfer: %3 <br/> Eisen: %4 <br/> Silber: %5 <br/> Oel: %6 <br/><br/><t color='#33CC33'>Magazin Kosten <t color='#ffffff'> <br/> Holz: %7 <br/> Kupfer: %8 <br/> Eisen: %9 <br/> Silber: %10 <br/> Oel: %11 ",_selectedWeapon,(_myArray select 0),(_myArray select 1),(_myArray select 2),(_myArray select 3),(_myArray select 4),(_Mags select 0),(_Mags select 1),(_Mags select 2),(_Mags select 3),(_Mags select 4)];
		_btn4 ctrlCommit 0;
	};

	if(_status IN _iMafiaClasses) then {
		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _iMafiaClasses;
		_selectedWeapon = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.
		_myArray = _iPricesMafiaClasses select _mySelect;
		_mags = _iMafiaMags;
		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["<t color='#33CC33'> %1 <t color='#ffffff'> <br/> Holz: %2 <br/> Kupfer: %3 <br/> Eisen: %4 <br/> Silber: %5 <br/> Oel: %6 <br/><br/><t color='#33CC33'>Magazin Kosten <t color='#ffffff'> <br/> Holz: %7 <br/> Kupfer: %8 <br/> Eisen: %9 <br/> Silber: %10 <br/> Oel: %11 ",_selectedWeapon,(_myArray select 0),(_myArray select 1),(_myArray select 2),(_myArray select 3),(_myArray select 4),(_Mags select 0),(_Mags select 1),(_Mags select 2),(_Mags select 3),(_Mags select 4)];
		_btn4 ctrlCommit 0;
	};


	if(_status IN _itemList) then {
		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _itemList;

		_selectedWeapon = (configfile >> "CfgMagazines" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.

		_myArray = _PricesItemList select _myselect;

		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["<t color='#33CC33'> %1 <t color='#ffffff'> <br/> Holz: %2 <br/> Kupfer: %3 <br/> Eisen: %4 <br/> Silber: %5 <br/> Oel: %6",_selectedweapon,(_myArray select 0),(_myArray select 1),(_myArray select 2),(_myArray select 3),(_myArray select 4)];
		_btn4 ctrlCommit 0;
	};

	if(_status IN _clothing1) then {

		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _clothing1;

		_selectedWeapon = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.

		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["Pelz: 2",_selectedweapon];
		_btn4 ctrlCommit 0;
	};

	if(_status IN _clothing2) then {

		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _clothing2;

		_selectedWeapon = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.

		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["Pelz: 4",_selectedweapon];
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

if(_status == "Pistols") exitwith {

	{
		_selectedweapon = (configfile >> "CfgWeapons" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _pistolClasses;

};

if(_status == "Large Weapons") exitwith {

	{
		_selectedweapon = (configfile >> "CfgWeapons" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _iMafiaClasses;

};

if(_status == "Items") exitwith {

	{
		_selectedweapon = (configfile >> "CfgMagazines" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _ItemList;

};


if(_status == "Clothing") exitwith {

	{
		_selectedweapon = (configfile >> "CfgWeapons" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _clothing1;

};

if(_status == "Quality Clothing") exitwith {

	{
		_selectedweapon = (configfile >> "CfgWeapons" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _clothing2;

};


if(isNil "shopholder") then {
	shopholder = "plp_ct_woodboxlightsmall" createVehicleLocal (getpos player);
};

if((_this select 0) == "CRAFT") exitwith {

	if(_status IN _PistolClasses) then {
		_count = _pistolclasses FIND _status;
		_cost = _PricesPistolClasses select _count;
	};

	if(_status IN _iMafiaClasses) then {
		_count = _iMafiaClasses FIND _status;
		_cost = _iPricesMafiaClasses select _count;
	};
	if(_status IN _itemList) then {
		_count = _itemList FIND _status;
		_cost = _PricesItemList select _count;
	};

	if(_status IN _clothing1) then {
		_cost = 2;
	};

	if(_status IN _clothing2) then {
		_cost = 4;
	};

if(_status IN _clothing1 || _status IN _clothing2) then {

	_error = false;

	_checkCost = _cost;

	_amountcurrent = {_x == "NP_Pelt"} count magazines player;
	if(_amountcurrent < _checkCost) exitwith { hint "Nicht ausreichend Ressourcen"; _error = true; };

	if(_error) exitwith {};



	_i = _Cost;

	while{ _i > 0 } do {
		player removeitem "NP_Pelt";
		_i = _i - 1;
	};

 } else {

	_error = false;
	_n = 0;
	{

		_materialCheck = _materials select _n;
		_checkCost = _cost select _n;

		_amountcurrent = {_x == (_materials select _n)} count magazines player;
		if(_amountcurrent < _checkCost) exitwith { hint "Nicht ausreichend Ressourcen"; _error = true; };
		_n = _n + 1;

	} foreach _cost;

	if(_error) exitwith {};


	_n = 0;
	{
		_checkCost = _cost select _n;
		_i = _checkCost;

		while{ _i > 0 } do {
			player removeitem (_materials select _n);
			_i = _i - 1;
		};

		_n = _n + 1;
	} foreach _cost;

};

if(_error) exitwith {};

	playSound3D ["CG_Jobs\sounds\sawing\saw.ogg", player, false, getPosasl player, 4, 1, 15];

	if(_status IN _ItemList || _status IN _clothing1 || _status IN _clothing2 ) then {
		shopholder additemCargoGlobal [_status,1];
		if(_status IN _ItemList ) then {
			_classStatus = _status;
			_status = (configfile >> "CfgMagazines" >> _status >> "displayName") call BIS_fnc_getCfgData;
		} else {
			_classStatus = _status;
			_status = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;
		};
	} else {
		shopholder addWeaponCargoGlobal [_status,1];
		_classStatus = _status;
		_status = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;
	};

	player disablecollisionwith shopholder;
	shopholder setpos (getposATL player);

	hint format["Du hast eine %1 hergestellt",_status];
	[player,1,format ["%1 hat eine %2 hergestellt", name player, _status],_classStatus,_status] remoteExec ["server_fnc_craftLog", 2];
	closedialog 0;
};

if((_this select 0) == "CRAFTMAG") exitwith {

	if(_status IN _PistolClasses) then {
		_count = _pistolclasses FIND _status;
		_cost = _PistolMags;
	};
	if(_status IN _iMafiaClasses) then {
		_count = _iMafiaClasses FIND _status;
		_cost = _iMafiaMags;
	};

	_error = false;
	_n = 0;
	{

		_materialCheck = _materials select _n;
		_checkCost = _cost select _n;

		_amountcurrent = {_x == (_materials select _n)} count magazines player;
		if(_amountcurrent < _checkCost) exitwith { hint "Nicht ausreichend Ressourcen"; _error = true; };
		_n = _n + 1;

	} foreach _cost;

	if(_error) exitwith {};


	_n = 0;
	{
		_checkCost = _cost select _n;
		_i = _checkCost;

		while{ _i > 0 } do {
			player removeitem (_materials select _n);
			_i = _i - 1;
		};

		_n = _n + 1;
	} foreach _cost;


	_magazines = getArray (configFile / "CfgWeapons" / _status / "magazines");
	_magazineClass = _magazines select 0;

	shopholder addmagazineCargoGlobal [_magazineclass,2];

	hint format["Du hast 2 magazine fuer die %1 hergestellt!",_status];
	[player,2,format ["%1 hat 2 Magazine fuer die Waffe %2 hergestellt", name player, _status],_magazineclass,_status] remoteExec ["server_fnc_craftLog", 2];
	closedialog 0;
	player disablecollisionwith shopholder;
	shopholder setpos (getpos player);
};

closedialog 0;
