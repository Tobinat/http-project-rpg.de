_quantity = _this select 0;
_item = _this select 1;
_totalprice = _this select 2;
_type = _this select 3;



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
    case 4: { _backpackitems = backpackItems player; removeBackpack player; player addBackpack _item; {player addItemToBackpack _x} foreach _backpackitems;};   
};

[_totalPrice] call Client_fnc_sl_removeCash_secure;

_chance = round (random 100);
if(_chance > 35) then {
	["Add","Karma",2] call client_fnc_sustain;
};

[player,objNull,1,format ["%1 kupił %2 w ilości %3 za %4 $", name player, _item, _quantity, _totalPrice],_totalPrice, _item, _quantity] remoteExec ["server_fnc_economyLog", 2];
[format["Kupiles %1x %2 za $%3 - sprawdz skrzynie pod Tobą.",_quantity, _item, _totalprice],true] spawn doQUICKmsg;