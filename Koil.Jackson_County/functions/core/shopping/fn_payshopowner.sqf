_quantity = _this select 0;
_item = _this select 1;
_totalprice = _this select 2;
_type = _this select 3;
_shopcontent = _this select 4;

_lostprice = (_totalprice / 100) * taxRate;
_lostprice = round (_lostprice);
_totalprice = _totalprice - _lostprice;

//shopcontent wasnt updating properly here for some reason, may be fixed now, dno.
player setvariable ["shopcontent",_shopcontent,false];
shopcontent = _shopcontent;

if(player distance myshop < 50) then {
	hint format["Someone bought %1 of %2 for $%3 - it has been added to your Bank - you lost %4 to mayor taxes.",_quantity, _item, _totalprice,_lostprice];
} else {
	_totalprice = _totalprice * 0.8;
	hint format["Someone bought %1 of %2 for $%3 - 20% was deducted for automated payment (Not being near your shop on purchase) - you lost %4 to mayor taxes.",_quantity, _item, _totalprice,_lostprice];
};	

if(_lostprice > 0) then {
	if(isNil "taxpayments") then { taxpayments = 0; };
	if(taxpayments == 0) then { taxpayments = taxpayments + _lostprice;	[_lostprice] spawn client_fnc_payMayor; } else { taxpayments = taxpayments + _lostprice; };
};

[_totalprice] call Client_fnc_addBank;