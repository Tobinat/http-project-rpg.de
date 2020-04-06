disableSerialization;
createdialog "FindKeyPlayer_Menu";

uisleep 0.05;
_display = findDisplay 1111;
_list = _display displayCtrl 1113;
lbClear _list;
_players = player nearEntities ["Man", 8];

if(vehicle player != player) then { _players = _players + (crew (vehicle player)); };
_nonUnits = [];

{if(!isPlayer _x) then {_nonUnits pushBack _x}} forEach _players;

_players = _players - _nonUnits;

{
	_list lbAdd format["%1", name _x];
	_list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach _players;
