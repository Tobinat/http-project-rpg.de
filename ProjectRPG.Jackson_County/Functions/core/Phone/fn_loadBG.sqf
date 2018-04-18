private["_display","_list","_side"];
disableSerialization;

_phoneBackgrounds = [];

_i = 80000;
while{_i < 80050} do { 
	_i = _i + 1;
	_phonebackgrounds pushback _i;
};

_display = findDisplay 537;
_list = _display displayCtrl 911;

lbClear _list;
{
		_list lbAdd format["$1 APP ID: %1", _x];
		_list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach _phoneBackgrounds;