// this is where we open the shop that we are looking at
private["_status","_lostprice"];
disableSerialization;
hint "Attempting purchase...";

_typebuy = _this select 0;

_index = lbCurSel (9001);
if (_index == -1) exitWith {};
_status = lbData[9001, _index];
_status = call compile format["%1", _status];

_quantity = ctrlText 9339;
_quantity = call compile format["%1", _quantity];

_item = _status select 0;
_itemName = _status select 1;
_cost = _status select 2;
_type = _status select 3;

if(isNil "_status") exitwith {};
if(isNil "_quantity") then { _quantity = 1; };
if(_quantity < 0) exitwith {};
 
_cost = call compile format["%1", (_status select 2)];

_totalprice = _cost * _Quantity;

if(_totalprice == 0 || _totalprice < 0) exitwith { hint "You can not purchase an item that costs $0"; };
_error = false;

if(_typebuy == "fish") then {
	_rarefish = {_x IN ["Fish_Mackerel_7", "Fish_Tuna_7", "Fish_Trout_Rare", "Fish_Shark_Rare"]} count magazines player;
	if(_rarefish < _totalprice) exitwith { hint "Not enough Fish!"; _error = true; };
};
if(_typebuy == "standard") then {
	_cash = player getVariable "wallet";
	if(_cash < _totalprice) exitwith { hint "Not enough cash."; _error = true; };
};

if(_error) exitwith {};




player allowdamage false;

if(isNil "shopholder") then {
	shopholder = "plp_ct_woodboxlightsmall" createVehicleLocal (getpos player);  
};
player disablecollisionwith shopholder;
shopholder setpos (getposATL player);	


player allowdamage true;

switch (_type) do {
    case 1: { shopholder addWeaponCargoGlobal [_item,_quantity]; };
    case 2: { shopholder addMagazineCargoGlobal [_item,_quantity]; };
    case 3: { shopholder addItemCargoGlobal [_item,_quantity]; };
    case 4: { shopholder addBackpackCargoGlobal [_item,_quantity]; };   
};

if(_typebuy == "fish") then {
	_rarefish1 = {_x == "Fish_Trout_Rare"} count magazines player;
	_rarefish2 = {_x == "Fish_Shark_Rare"} count magazines player;
	_rarefish3 = {_x == "Fish_Mackerel_7"} count magazines player;
	_rarefish4 = {_x == "Fish_Tuna_7"} count magazines player;

	while { _rarefish1 > 0 } do {
		if(_totalprice == 0) exitwith {};
		player removeitem "Fish_Trout_Rare";
		_rarefish1 = _rarefish1 - 1;
		_totalprice = _totalprice - 1;
		uisleep 0.05;
	};

	while { _rarefish2 > 0 } do {
		if(_totalprice == 0) exitwith {};
		_rarefish1 = _rarefish1 - 1;
		_totalprice = _totalprice - 1;	
		player removeitem "Fish_Shark_Rare";	
		uisleep 0.05;
	};

	while { _rarefish3 > 0 } do {
		if(_totalprice == 0) exitwith {};
		_rarefish1 = _rarefish1 - 1;
		_totalprice = _totalprice - 1;	
		player removeitem "Fish_Mackerel_7";	
		uisleep 0.05;
	};

	while { _rarefish4 > 0 } do {
		if(_totalprice == 0) exitwith {};
		_rarefish1 = _rarefish1 - 1;
		_totalprice = _totalprice - 1;	
		player removeitem "Fish_Tuna_7";	
		uisleep 0.05;
	};	

	playSound3D ["vvv_fishingrod\sounds\splash.ogg", player, false, getPosASL player, 5, 1, 45];
};
if(_typebuy == "standard") then {
	_lostprice = _status select 5;
	if(_lostprice > 0) then {
		if(isNil "taxpayments") then { taxpayments = 0; };
		if(taxpayments == 0) then { taxpayments = taxpayments + _lostprice;	[_lostprice] spawn client_fnc_payMayor; } else { taxpayments = taxpayments + _lostprice; };
	};

	[_totalPrice] call Client_fnc_removeCash;
};



[format["You bought %1 of %2 for $%3 - check the box at your feet.",_quantity, _item, _totalprice],true] spawn domsg;