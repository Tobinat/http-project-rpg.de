private["_display","_list","_side"];
disableSerialization;



_phoneSkins = [1,2,3,4,5,6,7,8,9,10,11,12]; 

_display = findDisplay 537;
_list = _display displayCtrl 912;
lbClear _list;
{
		_list lbAdd format["$50 PHONE: %1", _x];
		_list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach _phoneSkins;
