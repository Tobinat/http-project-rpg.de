private["_turntable", "_holder", "_time", "_dir"];



_player = _this select 0;

diag_log["retreive house: %1", _player];


_uid = getPlayerUID _player;
[_player,objNull,21,format ["%1 otworzył skrzynkę w domu", name _player],""] call server_fnc_actionLog;

if (_uid in activecrates) exitwith {};
activecrates pushback _uid;




_houseLevel = _player getvariable "houselevel";
if (_houselevel == 1) then {
    _holder = createVehicle["kif_storage_sack", _player modeltoworld[0, 2, 1], [], 0, "can_Collide"];
	["Zapis nastąpi po zniknięciu szkrzynki", false] remoteExec ["domsg",_player];
};
if (_houselevel == 2) then {
    _holder = createVehicle["kif_storage_cartondarkmedium", _player modeltoworld[0, 2, 1], [], 0, "can_Collide"];
	["Zapis nastąpi po zniknięciu szkrzynki", false] remoteExec ["domsg",_player];
};
if (_houselevel == 3) then {
    _holder = createVehicle["kif_storage_travelbag", _player modeltoworld[0, 2, 1], [], 0, "can_Collide"];
	["Zapis nastąpi po zniknięciu szkrzynki", false] remoteExec ["domsg",_player];
};
if (_houselevel == 4) then {
    _holder = createVehicle["kif_storage_suitcase", _player modeltoworld[0, 2, 1], [], 0, "can_Collide"];
	["Zapis nastąpi po zniknięciu szkrzynki", false] remoteExec ["domsg",_player];
};
if (_houselevel == 5) then {
    _holder = createVehicle["kif_storage_cartonlightbig", _player modeltoworld[0, 2, 1], [], 0, "can_Collide"];
	["Zapis nastąpi po zniknięciu szkrzynki", false] remoteExec ["domsg",_player];
};
if (_houselevel == 6) then {
    _holder = createVehicle["kif_storage_wood", _player modeltoworld[0, 2, 1], [], 0, "can_Collide"];
	["Zapis nastąpi po zniknięciu szkrzynki", false] remoteExec ["domsg",_player];
};
if (_houselevel == 7) then {
    _holder = createVehicle["kif_storage_woodbarrel", _player modeltoworld[0, 2, 1], [], 0, "can_Collide"];
	["Zapis nastąpi po zniknięciu szkrzynki", false] remoteExec ["domsg",_player];
};
if (_houselevel == 8) then {
    _holder = createVehicle["kif_storage_woodbox", _player modeltoworld[0, 2, 1], [], 0, "can_Collide"];
	["Zapis nastąpi po zniknięciu szkrzynki", false] remoteExec ["domsg",_player];
};
if (_houselevel == 9) then {
    _holder = createVehicle["kif_storage_cargobox", _player modeltoworld[0, 2, 1], [], 0, "can_Collide"];
	["Zapis nastąpi po zniknięciu szkrzynki", false] remoteExec ["domsg",_player];
};
if (_houselevel == 10) then {
    _holder = createVehicle["kif_storage_cargobox10", _player modeltoworld[0, 2, 1], [], 0, "can_Collide"];
	["Zapis nastąpi po zniknięciu szkrzynki", false] remoteExec ["domsg",_player];
};


_playercontent = _player getVariable "housecontent";

_myweapons = (_playercontent select 0);
_mymagazines = (_playercontent select 1);
_myitems = (_playercontent select 2);
_mybackpacks = (_playercontent select 3);


_process = _myWeapons select 0;

if (!isnil "_process") then {
    _count = 0; {
        _ItemCount = _myweapons select 1;
        _itemNumber = _ItemCount select _count;
        _holder addWeaponCargoGlobal[_x, _itemnumber];
        _count = _count + 1;
    }
    foreach _process;
};

_process = _myMagazines select 0;

if (!isnil "_process") then {
    _count = 0; {
        _ItemCount = _mymagazines select 1;
        _itemNumber = _ItemCount select _count;
        _holder addMagazineCargoGlobal[_x, _itemnumber];
        _count = _count + 1;
    }
    foreach _process;
};

_process = _myItems select 0;

if (!isnil "_process") then {
    _count = 0; {
        _ItemCount = _myitems select 1;
        _itemNumber = _ItemCount select _count;
        _holder addItemCargoGlobal[_x, _itemnumber];
        _count = _count + 1;
    }
    foreach _process;
};

_process = _mybackpacks select 0;

if (!isnil "_process") then {
    _count = 0; {
        _ItemCount = _mybackpacks select 1;
        _itemNumber = _ItemCount select _count;
        _holder addBackpackCargoGlobal[_x, _itemnumber];
        _count = _count + 1;
    }
    foreach _process;
};

_time = time + 120;

waitUntil {
    time > _time
};

if (!isnull _holder) then {
    _weapons = getWeaponCargo _holder;
    _magazines = getMagazineCargo _holder;
    _items = getItemCargo _holder;
    _backpacks = getBackpackCargo _holder;

    _playercontent = [_weapons, _magazines, _items, _backpacks];

    _player setVariable["housecontent", _playercontent, false];

    _updatestr = format["updateHouse:%1:%2", _playercontent, _uid];
    _update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;

    _units = nearestObjects [_holder, ["Man"], 50];
    {
		[] remoteExec ["client_fnc_closedialogs",_x];
	} foreach _units;

    deleteVehicle _holder;
    _pia = activecrates find _uid;
    activecrates deleteAt _pia;
	["Synchronizacja skrzynki zakończona", false] remoteExec ["domsg",_player];
};