_pos = _this select 0;
_markername = format["job%1",getPlayerUID player];
deletemarkerlocal _markername;
_marker = createMarkerlocal [_markername, _pos];
_marker setMarkerShapelocal "ICON";
_marker setMarkerTypelocal "hd_dot";
_marker setMarkerColorlocal "ColorOrange";
_marker setMarkerTextlocal "Miejsce zadania";

if(myjob == "Cop") then {
	[_pos,"Uruchomiony alarm!","Job"] spawn client_fnc_hudHelper;
} else {
	if(myjob == "Fire") then {
		[_pos,"Pożar!","Job"] spawn client_fnc_hudHelper;
		if (myjob == "Fire") then {playSound "fireAlarm";};
	} else {
		[_pos,"Zadanie","Job"] spawn client_fnc_hudHelper;
	};
};
