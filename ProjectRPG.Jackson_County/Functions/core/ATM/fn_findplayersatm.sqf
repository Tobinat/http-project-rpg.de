disableSerialization;
_display = findDisplay 1015;

_list = _display displayCtrl 1111;

lbClear _list;

{
	if(player != _x) then {
		_list lbAdd format["%1", name _x];
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	};
} foreach allplayers;