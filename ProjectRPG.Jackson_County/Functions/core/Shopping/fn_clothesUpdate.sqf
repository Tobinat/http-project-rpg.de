disableSerialization;
_index = lbCurSel (9001);
if (_index == -1) exitWith {};
_status = lbData[9001, _index];
_status = call compile format["%1", _status];
_item = _status select 0;
_type = _status select 4;

uisleep 0.35;

removeuniform cockbag; 
removebackpack cockbag;
removevest cockbag;
removegoggles cockbag;
removeheadgear cockbag;

cockbag addheadgear (headgear player);
cockbag adduniform (uniform player);
cockbag addbackpack (backpack player);
cockbag addgoggles (goggles player);
cockbag addvest (vest player);

[cockbag] spawn client_fnc_destroyGroundHolders;

if(_type == 0) exitwith {};


if(_type == 1) then { 
	cockbag forceadduniform _item; 
};

if(_type == 2) then { 
	cockbag addbackpack _item;
};

if(_type == 3) then { 
	cockbag addvest _item;
};

if(_type == 4) then { 
	cockbag addgoggles _item;
};

if(_type == 5) then { 
	cockbag addheadgear _item;
};