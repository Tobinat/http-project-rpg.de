// this is where we open the shop that we are looking at

private ["_n","_shopcontent","_shop","_loop","_currentShop"];
disableSerialization;

_shopcontent = _this select 0;
_shop = _this select 1;

if(!dialog) then {	createdialog "shop_menu"; };

uisleep 0.05;
_display = findDisplay 9999;
_list = _display displayCtrl 9001;

lbClear _list;

_currentShop = 0;
while{_currentShop < 4} do {
	_n = 0;
	_loop = count (_shopcontent select _currentShop select 0);
	while { _n != _loop } do {
		_class = ((_shopcontent select _currentShop) select 0) select _n;
		_item = [_class] call client_fnc_fetchItemType;

		_list lbAdd format["%1 | Qty: %2 | Price: $%3", _item select 1, ((_shopcontent select _currentShop) select 1) select _n, ((_shopcontent select _currentShop) select 2) select _n];
		_list lbSetdata [(lbSize _list)-1, str([_class,((_shopcontent select _currentShop) select 1) select _n, ((_shopcontent select _currentShop) select 2) select _n]) ];
		_list lbSetPicture [(lbSize _list)-1,_item select 2];
		_n = _n + 1;
	};
	_currentShop = _currentShop + 1;
};

