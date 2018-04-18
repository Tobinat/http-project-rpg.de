// this is where we open the shop that we are looking at

private ["_n","_shopcontent","_player","_loop","_currentShop"];
disableSerialization;

_shopcontent = _this select 0;
_player = _this select 1;

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
		_quantity = ((_shopcontent select _currentShop) select 1) select _n;
		_price = ((_shopcontent select _currentShop) select 2) select _n;
		if(_price > 0) then {
			_list lbAdd format["%1 | Ilosc: %2 | Cena: $%3", _item select 1, _quantity, _price];
			_list lbSetdata [(lbSize _list)-1, str([_class,_price, _quantity]) ];
			_list lbSetPicture [(lbSize _list)-1,_item select 2];
		};
		_n = _n + 1;
	};
	_currentShop = _currentShop + 1;
};
if(player getVariable ["cop",0] > 5 && myjob == "Cop") then {
	[format["Otworzyłeś sklep gracza: %1", name _player], false] spawn domsg;
};
