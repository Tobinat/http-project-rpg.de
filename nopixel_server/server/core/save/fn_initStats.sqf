_player = _this select 0;
_uid = getPlayerUID _player;
waitUntil {!(isNil{extDB_SQL_CUSTOM_ID})};
_checkstr = format ["existPlayerInfo:%1", _uid];
_check = [0, _checkstr] call ExternalS_fnc_ExtDBquery;
_booli = (_check select 0) select 0;

diag_log format["init stats %1 %2", _uid,_booli];
_points = 0;

if (_booli) then {
	_fetchstr = format ["getMessages:%1", _uid];
	_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync;
	_returned = str _fetch;
	_phonemessages = _fetch;

	_fetchstr = format ["getMail:%1", _uid];
	_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync;
	_returned = str _fetch;
	_mail = _fetch;

	_fetchstr = format ["getGarage:%1", _uid];
	_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync;
	_returned = str _fetch;
	_garage = _fetch;

	_fetchstr = format ["playerInfo:%1", _uid];
	_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync;
	_returned = str _fetch;
	

	_res = _fetch select 0;
	_items = _res select 0;
	_cash = _res select 1;
	_bank = _res select 2;
	_cop = _res select 3;
	_ems = _res select 4;
	_position = _res select 5;
	_bankAccount = _res select 6;
	_phoneBackground = _res select 7;
	_messages = _res select 8;
	_statuses = _res select 9;

	_queryStr = format["getSLPDPrison_active:%1:%2", _uid, 1];
	_prison = [_queryStr, 2] call ExternalS_fnc_ExtDBasync;
	
	_queryStr = format["getSLPDticket_points:%1", _uid];
	_points = (([_queryStr, 2] call ExternalS_fnc_ExtDBasync) select 0) select 0;
	if(TYPENAME _points == "STRING") then {
		_points = 0;
	};
	
	
	if(isNil "_statuses") then { _statuses = [0,100,100,100,0,0,0,[0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0],2,[0,0,0,0,0],["nobody",0,"no reason","NO DATE"]]; };

	_moneyOwed = (_statuses select 11) select 1;

	if(_moneyOwed > 0) then {
	MafiaLoan1 pushback _player;
	MafiaLoan2 pushback (_statuses select 11);
	};

	_houselevel = _res select 10;
	_housecontent = _res select 11;
	_shopcontent = _res select 12;
	_shopname = _res select 13;
	_mafia = _res select 14;
	_fire = _res select 15;
	_legal = _res select 16;
	_doughnuts = _res select 17;
	_respawn = _res select 18;

	_messages = [];

	_player setvariable ["getunitloadout",_items,false];

	_player setVariable ["sl_wallet_silverlake", _cash, false];
	_player setVariable ["sl_atm_silverlake", _bank, false];
	_player setVariable ["bankAccount", _bankAccount, false];
	_player setVariable ["cop", _cop, false];
	_player setVariable ["ems", _ems, false];
	_player setVariable ["mafia", _mafia, false];
	_player setVariable ["fire", _fire, false];
	_player setVariable ["legal", _legal, false];
	_player setVariable ["garage", _garage, false];
	_player setVariable ["doughnuts", _doughnuts, false];

	_player setVariable ["phoneBackground", _phoneBackground, false];
	_player setVariable ["messages", _messages, false];
	_player setVariable ["statuses", _statuses, false];

	_player setVariable ["houselevel", _houselevel, false];

	_player setVariable ["housecontent", _housecontent, false];
	_player setVariable ["shopcontent", _shopcontent, false];
	_player setVariable ["shopname", _shopname, false];

	_player setVariable ["respawn", _respawn, false];

	_inUseVehicles = [];
	_mycarinfo = [];
	if(!isNil {GarageVariableWhore getVariable (getplayerUID _player)}) then {
	_inUseVehicles = GarageVariableWhore getVariable (getplayerUID _player);

	{
	_info = _x getvariable "information";
	_mycarinfo pushback _info;
	_pia = _garage find _info;
	_garage deleteAt _pia;
	} foreach _inUseVehicles;
	};
	if(isNil "currentMayor") then { currentMayor = ""; };
	_mayor = false;
	if(_uid == currentMayor) then {
		_mayor = true;
		theMayor = _player;
	};
	
	/*_mayor = false;
	if(_uid == call compile format["%1",currentmayor]) then { _mayor = true; theMayor = _player; };

	if(_mayor) then{ _houselevel = 3; _player setVariable ["houselevel", _houselevel, false]; };*/


	_house = [0,0,0];
	if(_houseLevel == 1) then {
	_house = tier1housing call BIS_fnc_selectRandom;
	_pia = tier1housing find _house;
	tier1housing deleteAt _pia;
	};
	if(_houseLevel == 2) then {
	_house = tier1housing call BIS_fnc_selectRandom;
	_pia = tier1housing find _house;
	tier1housing deleteAt _pia;
	};
	if(_houseLevel == 3) then {
	_house = tier1housing call BIS_fnc_selectRandom;
	_pia = tier1housing find _house;
	tier1housing deleteAt _pia;
	};
	if(_houseLevel == 4) then {
	_house = tier2housing call BIS_fnc_selectRandom;
	_pia = tier2housing find _house;
	tier2housing deleteAt _pia;
	};
	if(_houseLevel == 5) then {
	_house = tier2housing call BIS_fnc_selectRandom;
	_pia = tier2housing find _house;
	tier2housing deleteAt _pia;
	};
	if(_houseLevel == 6) then {
	_house = tier2housing call BIS_fnc_selectRandom;
	_pia = tier2housing find _house;
	tier2housing deleteAt _pia;
	};
	if(_houseLevel == 7) then {
	_house = tier3housing call BIS_fnc_selectRandom;
	_pia = tier3housing find _house;
	tier3housing deleteAt _pia;
	};
	if(_houseLevel == 8) then {
	_house = tier3housing call BIS_fnc_selectRandom;
	_pia = tier3housing find _house;
	tier3housing deleteAt _pia;
	};
	if(_houseLevel == 9) then {
	_house = tier3housing call BIS_fnc_selectRandom;
	_pia = tier3housing find _house;
	tier3housing deleteAt _pia;
	};
	if(_houseLevel == 10) then {
	_house = tier3housing call BIS_fnc_selectRandom;
	_pia = tier3housing find _house;
	tier3housing deleteAt _pia;
	};

	_shop = shops call BIS_fnc_selectRandom;
	_pia = shops find _shop;
	shops deleteAt _pia;

	_player setVariable ["house", _house, false];
	_player setVariable ["shop", _shop, false];

	_house setVariable ["house", _player, false];
	_shop setVariable ["shop", _player, false];
	diag_log format ["%1 %2 %3 %4 %5 %6 %7 %8 %9 %10 %11 %12 %13 %14 %15 %16 %17 %18 %19 %20 %21 %22 %23 %24 %25 %26 %27 %28 %29",name _player, _items, _position, _cash, _bank, _bankAccount, _cop, _ems, _garage, _inUseVehicles, _phoneBackground, _messages, _statuses, _houselevel, _shopname, (getpos _house), (getpos _shop), _shopcontent, _mail, _phonemessages, _mycarinfo, _mafia, _fire, _legal, _mayor, _doughnuts, _respawn, _prison, _points];																																																																																																																																																													//,_mayor
	[_items, _position, _cash, _bank, _bankAccount, _cop, _ems, _garage, _inUseVehicles, _phoneBackground, _messages, _statuses, _houselevel, _shopname, (getpos _house), (getpos _shop), _shopcontent, _mail, _phonemessages, _mycarinfo, _mafia, _fire, _legal, _mayor, _doughnuts, _respawn, _prison, _points] remoteexec ["Client_fnc_loadInventory", _player];
} else {
	_name = name _player;
	_items = getunitloadout _player;
	_cash = 25;
	_bank = 1500;
	_cop = 0;
	_ems = 0;
	_mafia = 0;
	_fire = 0;
	_legal = 0;
	_mayor = false;
	_position = [0,0,0];
	_phoneBackground = [80001,1];
	_messages = [];
	_statuses = [0,100,100,100,0,0,0,[0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0],0,[0,0,0,0,0],["nobody",0,"no reason","NO DATE"]];
	_houselevel = 1;
	_housecontent = [[[],[]],[[],[]],[[],[]],[[],[]]];
	_shopcontent = [[[],[],[]],[[],[],[]],[[],[],[]],[[],[],[]]];

	_shopname = format["Sklep %1", _name];
	_insertstr = format ["insertPlayerInfo:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13:%14:%15:%16:%17:%18", _uid, _name, _items, _cash, _bank, _cop, _ems, _position, _phoneBackground, _messages, _statuses, _houselevel, _housecontent, _shopcontent, _shopname, _mafia, _fire, _legal];
	_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;

	sleep 0.15;

	_insertstr = format ["insertMail:%1:%2:%3:%4", "Witaj, to jest twoj pierwszy powitalny list! Witamy w Silver Lake!", format ["Drogi %1", name _player], "Silver Lake Urzad Miasta", getplayeruid _player];
	_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;

	sleep 0.15;

	_insertstr = format ["insertMessage:%1:%2:%3:%4", "Witaj, to jest twoj pierwszy SMS! Witamy w Silver Lake Siec Verizon!", format ["Drogi %1", name _player], "Siec Verizon", getplayeruid _player];
	_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;

	sleep 1;

	[_player] spawn Server_fnc_initStats;

	_startercars = ["Jonzie_XB","ADM_1969_Camaro","Jonzie_Mini_Cooper","Jonzie_Ceed","ADM_1964_Impala","ivory_190e"];
	_class = _startercars call BIS_fnc_selectRandom;

	_Color = "black"; _finish = "Matte"; _rims = "black";
	_windows = 1.0;
	_Lights = 1;
	_owner = getplayeruid _player;
	_licensePlate = "FrstCar";
	_statuses = 1;
	[_licensePlate, _class, _color, _finish, _rims, _windows, _lights, _owner, _statuses, "Add", _player] spawn Server_fnc_garageUpdate;
};
