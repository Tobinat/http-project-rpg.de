/*
	File: fn_craftMenucloting.sqf

	array numbers are:
	["prpg_item_stoff","prpg_item_eisen_bar"];
*/
disableSerialization;
private["_cost","_error","_materials","_n","_i","_classStatus"];

_status = lbData[1113,lbCurSel (1113)];
_status = call compile format["%1", _status];

_mainMenus = ["Westen"];

_materials = ["prpg_item_stoff","prpg_item_eisen_bar"];

_vests = [
	"S_VHO_LV_951",
	"S_VHO_LV_952",
	"S_VHO_LV_MTP1",
	"S_VHO_LV_MTP2",
	"S_VHO_LV_OD1",
	"S_VHO_LV_OD2",
	"S_VHO_PV_MTP",
	"S_VHO_PV_95",
	"TAC_PBDFG2_B_1",
	"TAC_PBDFG2_CY_1",
	"TAC_PBDFG2_RG_1",
	"TAC_PBDFG2C_B_1",
	"TAC_PBDFG2C_CY_1",
	"TAC_PBDFG2C_RG_1"
];

_costVest = [8,4];

//_kleidung = [];
//_costKleidung = [4,0];

uisleep 0.05;

_display = findDisplay 1111;

if((_this select 0) == "REFRESH") exitwith {

	if(isNil "_status") exitwith {};

	if(_status IN _vests) then {

		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _clothing2;

		_selectedWeapon = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.

		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["<t color='#33CC33'> %3 <t color='#ffffff'> <br/> Stoff: %1 </br> Eisen: %2 ",_costVest select 0, _costVest select 1,_selectedWeapon];
		_btn4 ctrlCommit 0;
	};

	/*
	if(_status IN _kleidung) then {

		_mySelect = 0;
		{
			if(_status == _x) exitwith {};
			_mySelect = _myselect + 1;
		} foreach _clothing1;

		_selectedWeapon = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;
		if(isNil "_selectedWeapon") exitwith {}; //? how did we even get here.

		_Btn4 = _display displayCtrl 1110;
		_Btn4 ctrlSetStructuredText parsetext format["<t color='#33CC33'> %3 <t color='#ffffff'> <br/> Stoff: %1 </br> Eisen: %2 ",_costKleidung select 0, _costKleidung select 1,_selectedWeapon];
		_btn4 ctrlCommit 0;
	};
	*/
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

if(_status == "Westen") exitwith {

	{
		_selectedweapon = (configfile >> "CfgWeapons" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _vests;

};
/*
if(_status == "Kleidung") exitwith {

	{
		_selectedweapon = (configfile >> "CfgWeapons" >> _x >> "displayName") call BIS_fnc_getCfgData;
		_list lbAdd _selectedweapon;
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	} foreach _kleidung;

};
*/

if(isNil "shopholder") then {
	shopholder = "plp_ct_woodboxlightsmall" createVehicleLocal (getpos player);
};

if((_this select 0) == "CRAFT") exitwith {

	if(_status IN _vests) then {
		_cost = _costVest;
	};

	if(_status IN _kelidung) then {
		_cost = _costKleidung;
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

	if(_error) exitwith {};

	playSound3D ["CG_Jobs\sounds\sawing\saw.ogg", player, false, getPosasl player, 4, 1, 15];

	shopholder additemCargoGlobal [_status,1];
	_classStatus = _status;
	_status = (configfile >> "CfgWeapons" >> _status >> "displayName") call BIS_fnc_getCfgData;


	player disablecollisionwith shopholder;
	shopholder setpos (getposATL player);

	hint format["Du hast eine %1 hergestellt",_status];
	[player,1,format ["%1 hat eine %2 hergestellt", name player, _status],_classStatus,_status] remoteExec ["server_fnc_craftLog", 2];
	closedialog 0;
};

if((_this select 0) == "CRAFTMAG") exitwith {

	hint "Das hier ist die Kleidungs Werkbank, welche Magazine willst du bitte herstellen?!";
	closedialog 0;

};

closedialog 0;
