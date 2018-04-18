params ["_player"];
_pos = getpos _player;
_name = name _player;
hint format["Sklep zamkniety"];

_marker = createMarkerLocal ["SklepZamkniety", _pos];
_marker setMarkerShapeLocal "ICON"; 
_marker setMarkerTypeLocal "hd_dot";
_marker setMarkerTextLocal format["Sklep %1 - Zamkniety",_name];

sklepotw = 0;
closetime = time;

[_player] remoteExec ["server_fnc_closeshop",2];