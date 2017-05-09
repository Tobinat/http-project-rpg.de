disableSerialization;


_display = findDisplay 5111;

_list = _display displayCtrl 911;

lbClear _list;

_num = 5;

while { _num != 0 } do {
	_list lbAdd format["Rating %1", _num];
	_list lbSetdata [(lbSize _list)-1,str(_num)];
	_num = _num - 1;
	uisleep 0.05;
};

