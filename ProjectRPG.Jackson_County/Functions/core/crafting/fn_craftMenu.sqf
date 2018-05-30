/*
	File: fn_craftMenu.sqf

	array numbers are:
	["NP_Wood","np_copperbar1","np_ironbar1","np_silverbar1","CG_OilCanister"];
*/
disableSerialization;
private["_cost","_error","_materials","_n","_i","_iMafiaClasses","_classStatus"];

_status = lbData[1113,lbCurSel (1113)];
_status = call compile format["%1", _status];

_mainMenus = ["Items","Werkbänke"];

_materialsitems = ["np_ironbar1","np_silverbar1","prpg_item_aluminium_bar","np_copperbar1","prpg_item_glas","prpg_item_gummi"];
_materialsworkbenches = ["NP_Wood","prpg_item_nails"];

_itemList = [
	"prpg_item_nails",
	"prpg_item_eisenstange",
	"NP_DrugTable",
	"NP_GrowingPlot",
	"CG_Engine",
	"CG_wheel",
	"CG_HackingTool",
	"CG_Lockpick",
	"NP_drillitem"
];

_PricesItemList = [
	[1,0,0,0,0,0],
	[1,0,0,0,0,0],
	[2,2,6,0,6,4],
	[4,0,4,4,0,6],
	[6,6,2,0,0,6],
	[2,0,2,0,0,8],
	[2,4,0,8,2,8],
	[2,2,2,0,0,2],
	[12,4,6,10,4,10]
];

_werlbankList = [
	"PRPG_WorkBench_Normal_item",
	"PRPG_WorkBench_Car_item",
	"PRPG_WorkBench_Weapon_item"
];

_PriceswerlbankList = [
	[20,10],
	[20,10],
	[20,10]
];

uisleep 0.05;

_display = findDisplay 1111;

if((_this select 0) == "REFRESH") exitwith {

	if(isNil "_status") exitwith {};
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
		_Btn4 ctrlSetStructuredText parsetext format["<t color='#33CC33'> %1 <t color='#ffffff'> <br/> Eisen: %2 <br/> Silber: %3 <br/> Aluminium: %4 <br/> Kupfer: %5 <br/> Glas: %6 <br/> Gummi: %6",_selectedweapon,(_myArray select 0),(_myArray select 1),(_myArray select 2),(_myArray select 3),(_myArray select 4),(_myArray select 5)];
		_btn4 ctrlCommit 0;
	};

	if(_status IN _werlbankList) then {
		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _werlbankList;

		_selectedWeapon = (configfile >> "CfgMagazines" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.

		_myArray = _PriceswerlbankList select _myselect;

		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["<t color='#33CC33'> %1 <t color='#ffffff'> <br/> Holz: %2 <br/> Eisennägel: %3 <br/>",_selectedweapon,(_myArray select 0),(_myArray select 1)];
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

if(_status == "Items") exitwith {

	{
		_selectedweapon = (configfile >> "CfgMagazines" >> _x >> "displayName") call BIS_fnc_getCfgData;
		if (_x IN ["prpg_item_nails","prpg_item_eisenstange"]) then {
			if (_x == "prpg_item_nails") then {
				_selectedweapon = "20x Eisennägel"
			}	else {
				_selectedweapon = "4x Eisenstangen"
			};
		};
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _ItemList;

};

if(_status == "Werkbänke") exitwith {

	{
		_selectedweapon = (configfile >> "CfgMagazines" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _werlbankList;

};

if(isNil "shopholder") then {
	shopholder = "plp_ct_woodboxlightsmall" createVehicleLocal [0,0,0];
};

if((_this select 0) == "CRAFT") exitwith {

	if(_status IN _itemList) then {
		_count = _itemList FIND _status;
		_cost = _PricesItemList select _count;
	};

	if(_status IN _werlbankList) then {
		_count = _werlbankList FIND _status;
		_cost2 = _PriceswerlbankList select _count;
	};


	if(_status IN _itemList) then {

		_error = false;
		_n = 0;
		{

			_materialCheck = _PricesItemList select _n;
			_checkCost = _cost select _n;
			_amountcurrent = {_x == (_PricesItemList select _n)} count magazines player;
			if(_amountcurrent < _checkCost) exitwith { hint "Nicht ausreichend Ressourcen"; _error = true; };
			_n = _n + 1;

		} foreach _cost;

		if(_error) exitwith {};


		_n = 0;
		{
			_checkCost = _cost select _n;
			_i = _checkCost;

			while{ _i > 0 } do {
				player removeitem (_PricesItemList select _n);
				_i = _i - 1;
			};

			_n = _n + 1;
		} foreach _cost;


	 } else {

		_error = false;
		_n = 0;
		{

			_materialCheck = _PriceswerlbankList select _n;
			_checkCost = _cost select _n;

			_amountcurrent = {_x == (_PriceswerlbankList select _n)} count magazines player;
			if(_amountcurrent < _checkCost) exitwith { hint "Nicht ausreichend Ressourcen"; _error = true; };
			_n = _n + 1;

		} foreach _cost;

		if(_error) exitwith {};

		_n = 0;
		{
			_checkCost = _cost select _n;
			_i = _checkCost;

			while{ _i > 0 } do {
				player removeitem (_PriceswerlbankList select _n);
				_i = _i - 1;
			};

			_n = _n + 1;
		} foreach _cost;

	};
if(_error) exitwith {};

	playSound3D ["CG_Jobs\sounds\sawing\saw.ogg", player, false, getPosasl player, 4, 1, 15];
	if !(_status IN ["prpg_item_nails","prpg_item_eisenstange"]) then {
		shopholder additemCargoGlobal [_status,1];
		} else {
			if (_status == "prpg_item_nails") then {
				for "_i" from 1 to 20 do {player addItemToBackpack "prpg_item_nails"; };
			} else {
				for "_i" from 1 to 4 do {player addItemToBackpack "prpg_item_eisenstange"; };
			};
	};
	_classStatus = _status;
	_status = (configfile >> "CfgMagazines" >> _status >> "displayName") call BIS_fnc_getCfgData;

	player disablecollisionwith shopholder;
	shopholder setpos (getposATL player);

	hint format["Du hast eine %1 hergestellt",_status];
	[player,1,format ["%1 hat eine %2 hergestellt", name player, _status],_classStatus,_status] remoteExec ["server_fnc_craftLog", 5];
	closedialog 0;
};

if((_this select 0) == "CRAFTMAG") exitwith {
["Hier gibts keine Magazine zum herstellen!",true] spawn domsg;
};

closedialog 0;
