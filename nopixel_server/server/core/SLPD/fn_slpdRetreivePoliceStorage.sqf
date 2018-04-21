private["_turntable", "_policeHolder", "_time", "_dir"];

_player = _this select 0;

diag_log["retreive slpd police storage: %1", _player];

if (policeStorageActive == 1) exitWith {["Ktoś już używa skrzyni!", false] remoteExec ["domsg",_player];};
if (policeStorageActive == 0) then {policeStorageActive = 1;};

_uid = getPlayerUID _player;
//[_player,objNull,21,format ["%1 otworzył skrzynkę w domu", name _player],""] call server_fnc_actionLog;

_policeHolder = createVehicle["kif_storage_cargobox_dtu", _player modeltoworld[0, 2, 1], [], 0, "can_Collide"];
["Zapis nastąpi po zniknięciu szkrzynki", false] remoteExec ["domsg",_player];


_fetchstr = format ["getSLPDPoliceStorage:%1", 1];
_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync;
_res = _fetch select 0;
_storagecontent = _res select 0;


_myweapons = (_storagecontent select 0);
_mymagazines = (_storagecontent select 1);
_myitems = (_storagecontent select 2);
_mybackpacks = (_storagecontent select 3);


_process = _myWeapons select 0;

if (!isnil "_process") then {
    _count = 0; {
        _ItemCount = _myweapons select 1;
        _itemNumber = _ItemCount select _count;
        _policeHolder addWeaponCargoGlobal[_x, _itemnumber];
        _count = _count + 1;
    }
    foreach _process;
};

_process = _myMagazines select 0;

if (!isnil "_process") then {
    _count = 0; {
        _ItemCount = _mymagazines select 1;
        _itemNumber = _ItemCount select _count;
        _policeHolder addMagazineCargoGlobal[_x, _itemnumber];
        _count = _count + 1;
    }
    foreach _process;
};

_process = _myItems select 0;

if (!isnil "_process") then {
    _count = 0; {
        _ItemCount = _myitems select 1;
        _itemNumber = _ItemCount select _count;
        _policeHolder addItemCargoGlobal[_x, _itemnumber];
        _count = _count + 1;
    }
    foreach _process;
};

_process = _mybackpacks select 0;

if (!isnil "_process") then {
    _count = 0; {
        _ItemCount = _mybackpacks select 1;
        _itemNumber = _ItemCount select _count;
        _policeHolder addBackpackCargoGlobal[_x, _itemnumber];
        _count = _count + 1;
    }
    foreach _process;
};

_time = time + 120;

waitUntil {
    time > _time
};

if (!isnull _policeHolder) then {
    _weapons = getWeaponCargo _policeHolder;
    _magazines = getMagazineCargo _policeHolder;
    _items = getItemCargo _policeHolder;
    _backpacks = getBackpackCargo _policeHolder;

    _storagecontent = [_weapons, _magazines, _items, _backpacks];

    _updatestr = format["updateSLPDPoliceStorage:%1:%2", _storagecontent, 1];
    _update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;

    _units = nearestObjects [_policeHolder, ["Man"], 50];
    {
		[] remoteExec ["client_fnc_closedialogs",_x];
	} foreach _units;
	policeStorageActive = 0;
    deleteVehicle _policeHolder;
	["Synchronizacja skrzynki zakończona", false] remoteExec ["domsg",_player];
};