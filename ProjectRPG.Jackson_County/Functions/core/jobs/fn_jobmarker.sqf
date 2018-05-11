_pos = _this select 0;
_markername = format["job%1",getPlayerUID player];
deletemarkerlocal _markername;
_marker = createMarkerlocal [_markername, _pos];
_marker setMarkerShapelocal "ICON";
_marker setMarkerTypelocal "hd_dot";
_marker setMarkerColorlocal "ColorOrange";
_marker setMarkerTextlocal "Ort der Aufgabe";
if (driver_test) then {
	[_pos,"Checkpoint","Job"] spawn client_fnc_hudHelper;
	} else {
		if(myjob == "Cop") then {
			[_pos,"Alarm aktiviert!","Job"] spawn client_fnc_hudHelper;
		} else {
			if(myjob == "Fire") then {
				[_pos,"Feuer!","Job"] spawn client_fnc_hudHelper;
				playSound "fireAlarm";
			} else {
				[_pos,"Aufgabe","Job"] spawn client_fnc_hudHelper;
			};
		};
	};
