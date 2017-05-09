_pos = _this select 0;
_markername = format["job%1",getPlayerUID player];
deletemarkerlocal _markername;
_marker = createMarkerlocal [_markername, _pos];
_marker setMarkerShapelocal "ICON";
_marker setMarkerTypelocal "hd_dot";
_marker setMarkerColorlocal "ColorOrange";
_marker setMarkerTextlocal "Tasked Location";

if(myjob == "Cop") then { [_pos,"Baseball Bat Robbery Report","Job"] spawn client_fnc_hudHelper; } else { [_pos,"Job Task","Job"] spawn client_fnc_hudHelper;};
