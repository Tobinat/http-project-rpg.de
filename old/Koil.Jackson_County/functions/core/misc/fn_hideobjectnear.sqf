//	[_object,_distanceofplayers,_sleeptimetilrespawn] spawn client_fnc_hideobjectnear;

_object = _this select 0;
_distance = _this select 1;
_length = _this select 2;

_players = player nearEntities ["Man", _distance];

_nonUnits = [];

{if(!isPlayer _x) then {_nonUnits pushBack _x}} forEach _players;

_players pushback player;

[_object,true] remoteExec ["hideobject",_players];
uisleep _length;
if(_length == 0) exitwith {};
[_object,false] remoteExec ["hideobject",_players];
