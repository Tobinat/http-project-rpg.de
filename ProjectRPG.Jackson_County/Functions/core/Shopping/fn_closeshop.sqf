params ["_player"];
_pos = getpos _player;
_name = name _player;
hint format["Laden geschlossen"];

_marker = createMarkerLocal ["Geschäft geschlossen", _pos];
_marker setMarkerShapeLocal "ICON"; 
_marker setMarkerTypeLocal "hd_dot";
_marker setMarkerTextLocal format["Geschäft %1 - geschlossen",_name];

sklepotw = 0;
closetime = time;

[_player] remoteExec ["server_fnc_closeshop",2];