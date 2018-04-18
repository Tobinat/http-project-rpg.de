disableSerialization;

_data = lbData[9001,lbCurSel (9001)];
_data = call compile format["%1", _data];

_display = findDisplay 9999;

_list = _display displayCtrl 5338;
lbClear _list;
{
	_list lbAdd format["%1", name _x];
	_list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach _data;
