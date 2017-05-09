//this is where we create a dialog to update prices.
// [_shopcontent] remoteExec ["client_fnc_updatePrices",_player];

private ["_n","_shopcontent","_shop","_loop","_currentShop"];
disableSerialization;

_loadout = getunitloadout player;

[player,1,getplayeruid player,name player,_loadout] remoteExec ["server_fnc_steppedsync",2]; 

lastforcesync = time;


_nearc = nearestObjects[getPos player,["plp_ct_woodboxlightbig"],55];

if(count _nearc > 0) exitwith { hint "You can not do this while a crate is out"; };

_toDo = _this select 1;
if(_toDo == "nameUpdate") exitwith {
	hint "Shop name is being processed.";
	_newName = ctrlText 8331;
	[player,_newName] remoteExec ["server_fnc_StoreUpdateName",2];
};
if(_toDo == "finishUpdate") exitwith {
	hint "Your shop changes have been stored to the database, players will now see the new prices.";
	[player,shopcontent] remoteExec ["server_fnc_finishStoreUpdate",2];
};

if(_toDo == "start") then {
	if(dialog) then {	
		closedialog 0; 
		createdialog "shop_update"; 
	};
	hint "Please update your shop prices";
};

if(!dialog) then { createdialog "shop_update"; };



uisleep 0.05;
_display = findDisplay 9999;
_list = _display displayCtrl 9001;

shopcontent = _this select 0;



if(_toDo == "update") then {
	_index = lbCurSel (9001);
	if (_index == -1) exitWith {};
	_status = lbData[9001, _index];
	_status = call compile format["%1", _status];
	_currentShop = (_status select 0);
	_n = (_status select 1);
	_newPrice = ctrlText 9331;
	_newprice = parsenumber _newprice;
	if(_newPrice < 0) then { _newprice = "0"; };

	((shopcontent select _currentShop) select 2) set [_n,_newPrice];
};


lbClear _list;
_currentShop = 0;
while{_currentShop < 4} do {
	_n = 0;
	_loop = count (shopcontent select _currentShop select 0);
	while { _n != _loop } do {
		_class = ((shopcontent select _currentShop) select 0) select _n;
		_item = [_class] call client_fnc_fetchItemType;

		_list lbAdd format["%1 | Qty: %2 | Price: $%3", _item select 1, ((shopcontent select _currentShop) select 1) select _n, ((shopcontent select _currentShop) select 2) select _n];
		_list lbSetdata [ (lbSize _list)-1 , str([_currentShop,_n]) ];
		_list lbSetPicture [(lbSize _list)-1,_item select 2];
		_n = _n + 1;
	};
	_currentShop = _currentShop + 1;
};

