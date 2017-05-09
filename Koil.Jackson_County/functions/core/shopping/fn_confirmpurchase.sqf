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
    case 4: { shopholder addBackpackCargoGlobal [_item,_quantity]; };   
};

[_totalPrice] call Client_fnc_removeCash;

[format["You bought %1 of %2 for $%3 - check the box at your feet.",_quantity, _item, _totalprice],true] spawn doQUICKmsg;