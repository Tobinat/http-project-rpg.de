_pos = _this select 0;
_markername = format["job%1",getPlayerUID player];
deletemarkerlocal _markername;
_marker = createMarkerlocal [_markername, _pos];
_marker setMarkerShapelocal "ICON";
_marker setMarkerTypelocal "hd_dot";
_marker setMarkerColorlocal "ColorOrange";
_marker setMarkerTextlocal "Tasked Location";

if(myjob == "Cop") then { [_pos,"Baseball Schläger Raub","Job"] spawn client_fnc_hudHelper; } else { [_pos,"Aufgabe","Job"] spawn client_fnc_hudHelper;};
