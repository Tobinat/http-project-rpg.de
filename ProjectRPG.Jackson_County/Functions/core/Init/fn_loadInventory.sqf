/*
load inventory
*/
private ["_house"];

_items = _this select 0;
_position = _this select 1;
_cash = _this select 2;
_bank = _this select 3;
_bankAccount = _this select 4;
_cop = _this select 5;
_ems = _this select 6;
_garage = _this select 7;
Current_Cars = _this select 8;
phoneBackground = (_this select 9) select 0;
phoneSkin = (_this select 9) select 1;
_messages = _this select 10;
_statuses = _this select 11;

_houselevel = _this select 12;
_shopname = _this select 13;
_house = _this select 14;
_shop = _this select 15;
shopcontent = _this select 16;
mail = _this select 17;
messages = _this select 18;
_usedcarinfo = _this select 19;
_mafia = _this select 20;
_fire = _this select 21;
_legal = _this select 22;
_mayor = _this select 23;
_doughnuts = _this select 24;
_respawn = _this select 25;
_prisonArray = _this select 26;
_points = _this select 27;



_higherup = false;


if(_mafia == 10) then {_house = getpos nearestObject [[9842.84,3677.44,0.00143814], "Land_vvv_np_maison1"]; _higherup = true; };
if(_mafia == 9) then { _house = getpos nearestObject [[9736.28,3629.54,0.00143814], "Land_vvv_np_maison1"]; _higherup = true; };
if(_cop == 10) then {_house = getpos nearestObject [[9626,3578.7,0.00143814], "Land_vvv_np_maison1"]; _higherup = true; };
if(_cop == 9) then { _house = getpos nearestObject [[9516.43,3526.09,0.00143814], "Land_vvv_np_maison1"]; _higherup = true; };
if(_ems == 10) then { _house = getpos nearestObject [[9412.31,3479.1,0.00143814], "Land_vvv_np_maison1"]; _higherup = true; };
if(_ems == 9) then { _house = getpos nearestObject [[9306.67,3430.66,0.00143814], "Land_vvv_np_maison1"]; _higherup = true; };
if(_legal == 10) then { _house = getpos nearestObject [[9188.22,3371.8,0.00143814], "Land_vvv_np_maison1"]; _higherup = true; };
if(_legal == 9) then { _house = getpos nearestObject [[9094.99,3324.16,0.00143814], "Land_vvv_np_maison1"]; _higherup = true; };
if(_legal == 8) then { _house = getpos nearestObject [[8984.55,3274.12,0.00143814], "Land_vvv_np_maison1"]; _higherup = true; };
if(_mayor) then { 
	[] spawn client_fnc_mayorsetup; 
	_house = getpos nearestObject [[9949.03,3732.87,0.00143814], "Land_vvv_np_maison1"]; _higherup = true;
};

//[8984.55,3274.12,0.00143814]


_count = 0;
{
	_newusedcarinfo = _usedcarinfo select _count;
	(current_cars select _count) setvariable ["information",_newusedcarinfo,false];
	_count = _count + 1;
} foreach current_cars;

Shared_Cars = [];

player setVariable ["sl_wallet_silverlake", _cash, false];
player setVariable ["sl_atm_silverlake", _bank, false];
player setVariable ["bankAccount", _bankAccount, false];

player setVariable ["cop", _cop, false];
player setVariable ["ems", _ems, false];
player setVariable ["fire", _fire, false];
player setVariable ["mafia", _mafia, false];
player setVariable ["legal", _legal, false];
player setVariable ["doughnuts", _doughnuts, false];

player setVariable ["garage", _garage, false];
player setVariable ["messages", _messages, false];
player setVariable ["statuses", _statuses, false];

player setVariable ["respawn", _respawn, false];
player setVariable ["veh_points",_points,false];

myoffice = [0,0,0];
player setVariable ["houselevel", _houselevel, false];

deletemarkerlocal "myhouse";
if (_houselevel > 6) then {
	deletemarkerlocal "myhouse";
	_marker = createMarkerLocal ["myhouse", _house];
	_marker setMarkerShapeLocal "ICON";
	_marker setMarkerTypeLocal "hd_dot";
	_marker setMarkerTextLocal "Moja Willa";
};
if (_houselevel > 3) then {
	deletemarkerlocal "myhouse";
	_marker = createMarkerLocal ["myhouse", _house];
	_marker setMarkerShapeLocal "ICON";
	_marker setMarkerTypeLocal "hd_dot";
	_marker setMarkerTextLocal "Mój Dom";
} else {
	deletemarkerlocal "myhouse";
	_marker = createMarkerLocal ["myhouse", _house];
	_marker setMarkerShapeLocal "ICON";
	_marker setMarkerTypeLocal "hd_dot";
	_marker setMarkerTextLocal "Moja Klitka";
};


_marker = createMarkerLocal [getPlayerUID player, _shop];
_marker setMarkerShapeLocal "ICON";
_marker setMarkerTypeLocal "hd_dot";
_marker setMarkerTextLocal format["%1 - ZAMKNIĘTY", _shopname];


player setVariable ["shopname", _shopname, false];

client_karma = (_statuses select 0);
client_hunger = (_statuses select 1);
client_thirst = (_statuses select 2);
client_battery = (_statuses select 3);
client_poop = (_statuses select 4);

myhealth = (_statuses select 5); 

client_unhealthiness = (_statuses select 6);

_myInjuries = (_statuses select 7);

licenseArray = (_statuses select 8);

player setVariable ["playerInjuries", _myInjuries, true];

_drugEffects = (_statuses select 10);

client_marijuana = _drugEffects select 0;
client_cocaine = _drugEffects select 1;
client_meth = _drugEffects select 2;
client_heroin = _drugEffects select 3;
client_energy = _drugEffects select 4;

//player name // amount // reasoning
loan = (_statuses select 11);
moneyOwed = (_statuses select 11) select 1;

//do prison shit here

if(count(_prisonArray) > 0) then {
	[_prisonArray] spawn client_fnc_slpd_jail_setup;
} else {
	player setpos [7639.87,2553.39,0.00143814];
	if(_higherup) exitwith { player setpos _house};
	if(_houselevel == 1) then {
		_nObject = nearestObjects [_house, ["Land_ivory_trailer_04","Land_ivory_trailer_01","Land_ivory_trailer_02","Land_ivory_trailer_03","Land_ivory_trailer_06","Land_ivory_trailer_05"], 30];  
		_containerpos = (_nobject select 0) getrelpos [8,0]; 
		player setpos _containerpos;
	};
	if(_houselevel == 2) then {
		_nObject = nearestObjects [_house, ["Land_ivory_trailer_04","Land_ivory_trailer_01","Land_ivory_trailer_02","Land_ivory_trailer_03","Land_ivory_trailer_06","Land_ivory_trailer_05"], 30];  
		_containerpos = (_nobject select 0) getrelpos [8,0]; 
		player setpos _containerpos;
	};
	if(_houselevel == 3) then {
		_nObject = nearestObjects [_house, ["Land_ivory_trailer_04","Land_ivory_trailer_01","Land_ivory_trailer_02","Land_ivory_trailer_03","Land_ivory_trailer_06","Land_ivory_trailer_05"], 30];  
		_containerpos = (_nobject select 0) getrelpos [8,0]; 
		player setpos _containerpos;
	};
	if(_houselevel == 4) then {
		_nObject = nearestObjects [_house, ["Land_Ranch_DED_Ranch_02_F","Land_Ranch_DED_Ranch_01_F","Land_HouseC_R","Land_HouseC1_L","Land_HouseA1_L","Land_HouseB1_L"], 30];   
		_containerpos = (_nobject select 0) getrelpos [15,0];  
		player setpos _containerpos;
	};
	if(_houselevel == 5) then {
		_nObject = nearestObjects [_house, ["Land_Ranch_DED_Ranch_02_F","Land_Ranch_DED_Ranch_01_F","Land_HouseC_R","Land_HouseC1_L","Land_HouseA1_L","Land_HouseB1_L"], 30];   
		_containerpos = (_nobject select 0) getrelpos [15,0];  
		player setpos _containerpos;
	};
	if(_houselevel == 6) then {
		_nObject = nearestObjects [_house, ["Land_Ranch_DED_Ranch_02_F","Land_Ranch_DED_Ranch_01_F","Land_HouseC_R","Land_HouseC1_L","Land_HouseA1_L","Land_HouseB1_L"], 30];   
		_containerpos = (_nobject select 0) getrelpos [15,0];  
		player setpos _containerpos;
	};
	if(_houselevel == 7) then {
		_nObject = nearestObjects [_house, ["Land_HouseDoubleAL","Land_HouseDoubleAL2"], 30];   
		_containerpos = (_nobject select 0) getrelpos [15,0];  
		player setpos _containerpos;
	};
	if(_houselevel == 8) then {
		_nObject = nearestObjects [_house, ["Land_HouseDoubleAL","Land_HouseDoubleAL2"], 30];   
		_containerpos = (_nobject select 0) getrelpos [15,0];  
		player setpos _containerpos;
	};
	if(_houselevel == 9) then {
		_nObject = nearestObjects [_house, ["Land_HouseDoubleAL","Land_HouseDoubleAL2"], 30];   
		_containerpos = (_nobject select 0) getrelpos [15,0];  
		player setpos _containerpos;
	};
	if(_houselevel == 10) then {
		_nObject = nearestObjects [_house, ["Land_HouseDoubleAL","Land_HouseDoubleAL2"], 30];   
		_containerpos = (_nobject select 0) getrelpos [15,0];  
		player setpos _containerpos;
	};
};

myhouse = _house;
myshop = _shop;

removeAllItems player;
removeAllContainers player;
removeAllWeapons player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadgear player;

[player] spawn client_fnc_destroyGroundHolders;
player setunitloadout _items;

if((_statuses select 9) == 0) then {
	[] spawn client_fnc_playerselect;
	[] spawn {
		cutText ["","BLACK IN", 1];
		"dynamicBlur" ppEffectEnable true; /* enables ppeffect */
		"dynamicBlur" ppEffectAdjust [0]; /* intensity of blur */
		"dynamicBlur" ppEffectCommit 25; /* time till vision is fully blurred */
		uisleep 27;
		"dynamicBlur" ppEffectEnable false;	
	};
} else {
	if((_statuses select 9) == 1) then { 
		Female = true;
	} else { Female = false; };
	player setVariable["loaded", 1, false];	
	[] spawn {
		"dynamicBlur" ppEffectEnable true; /* enables ppeffect */
		"dynamicBlur" ppEffectAdjust [0]; /* intensity of blur */
		"dynamicBlur" ppEffectCommit 5; /* time till vision is fully blurred */
		uisleep 5;
		"dynamicBlur" ppEffectEnable false;	
	};
};

if(isNil "TaxRate") then { TaxRate = 0; };
player setUnitRecoilCoefficient 1.75;
if(client_marijuana > 0) then { player setCustomAimCoef 0; };
if(client_cocaine > 0) then { player setAnimSpeedCoef 1.2; };
if(client_heroin > 0) then { player setUnitRecoilCoefficient 0.5; };
if(client_energy > 0) then {
	player enablefatigue false;
	player enablestamina false;
};
[player,1,format ["%1 połączył się do serwera", name player],getPlayerUID player, getUnitLoadout player] remoteExec ["server_fnc_connectionLog", 2];
[getPlayerUID player, "connected", name player] remoteExec ["Server_fnc_connected", 2];