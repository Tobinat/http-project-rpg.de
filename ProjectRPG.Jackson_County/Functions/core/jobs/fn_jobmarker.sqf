_pos = _this select 0;
_type = _this select 1;

/*
_markername = format["job%1",getPlayerUID player];
deletemarkerlocal _markername;
_marker = createMarkerlocal [_markername, _pos];
_marker setMarkerShapelocal "ICON";
_marker setMarkerTypelocal "hd_dot";
_marker setMarkerColorlocal "ColorOrange";
_marker setMarkerTextlocal "Ort der Aufgabe";

		if(myjob == "Cop") then {
			[_pos,"Alarm aktiviert!","Job"] spawn client_fnc_hudHelper;
		} else {
			if(myjob == "EMS") then {
				[_pos,"Feuer!","Job"] spawn client_fnc_hudHelper;
				playSound "fireAlarm";
			} else {
				[_pos,"Aufgabe","Job"] spawn client_fnc_hudHelper;
			};
		};
*/
		
if (_type == "Feuer") then {
	[_pos,"Feuer!","Job"] spawn client_fnc_hudHelper;
	playSound "fireAlarm";
};

if (_type == "Cop") then {
	[_pos,"Alarm aktiviert!","Job"] spawn client_fnc_hudHelper;
};

if (_type == "driver") then {
	[_pos,"Checkpoint!","Location"] spawn client_fnc_hudHelper;
};

if (_type != "driver" && _type != "Cop" && _type != "Feuer") then {
	[_pos,"Aufgabe","Job"] spawn client_fnc_hudHelper;
};