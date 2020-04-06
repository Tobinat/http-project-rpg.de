params["_players","_owing"];
disableserialization;
closedialog 0;
createdialog "LoanShark";

uisleep 0.05;

_display = findDisplay 9999;
_list = _display displayCtrl 9001;
lbClear _list;

_selection = 0;
{
	_playername = name _x;
	_giver = (_owing select _selection) select 0;
	_moneyOwed = (_owing select _selection) select 1;

	_cash = _moneyOwed call client_fnc_numberText;
	_reason = (_owing select _selection) select 2;
	_datedue = (_owing select _selection) select 3;

	_list lbAdd format["%1 - %2", _playerName,_cash];
	_list lbSetdata [(lbSize _list)-1,str([_x,_giver,_moneyOwed,_reason,_datedue])];
	_selection = _selection + 1;
} foreach _players;