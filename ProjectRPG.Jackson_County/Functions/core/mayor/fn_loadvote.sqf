// set variable candidates to
// CANDIDATES = [];
// CANDIDATES PUSHBACK [player,0];

disableserialization;
if(isNil "candidates") exitwith { hint "Elekcja nie jest obecnie przeprowadzana"; closedialog 0; };

_display = findDisplay 9999;
_list = _display displayCtrl 9001;
_n = 0;
{
	_list lbAdd format["%1: %2",_n, name (_x select 0)];
	_list lbSetdata [(lbSize _list)-1, str(_n)];
	_n = _n + 1;
} foreach candidates;