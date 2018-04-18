_vehicles = ["vvv_seatleon_2014_arruabarrena",
"vvv_seatleon_2014_baus",
"vvv_seatleon_2014_briche_blue",
"vvv_seatleon_2014_carbonell",
"vvv_seatleon_2014_comini",
"vvv_seatleon_2014_dediego",
"vvv_seatleon_2014_font",
"vvv_seatleon_2014_giao",
"vvv_seatleon_2014_grise",
"vvv_seatleon_2014_hernandez",
"vvv_seatleon_2014_mourgues",
"vvv_seatleon_2014_oriola",
"vvv_seatleon_2014_rueda",
"vvv_seatleon_2014_schmarl",
"vvv_seatleon_2014_veglia",
"vvv_seatleon_2014_vinyes",
"vvv_seatleon_2014_weber"];

_myvehicle = _vehicles call BIS_fnc_selectRandom;

_vehicle = _myvehicle createvehicle getpos player;

player moveInDriver _vehicle;

_vehicle allowdamage false;
player allowdamage false;

_vehicle setpos getmarkerpos "rally_1";

_vehicle setVelocity [0, 0, 0];

_vehicle setdir 180;


uisleep 1;
hint "GO!";

player allowdamage false;
godmode = true;

private["_laps","_timer","_markerNum","_laptime","_finish","_myfastest"];

_laps = 0;
_timer = 0;
_markerNum = 2;
_laptime = 999999;
_finish = false;
_myfastest = 999999;

for "_i" from 0 to 1 step 0 do {

	_marker = format["rally_%1",_markerNum];

	if(player distance getmarkerpos _marker < 35) then {

		_markerNum = _markerNum + 1;

		if(_markerNum == 15) then { _markerNum = 1;  };

		if(_markerNum == 1) then { _laps = _laps + 1; _lapTime = _timer;  if(_laptime < _myfastest) then { _myfastest = _laptime; }; hint format["Twoje ostatnie okrążenie to: %1 sekund --- Najszybsze: %2",_laptime,_myfastest];  _timer = 0; };

		if(_laps == 3) then { _finish = true; hint "Ukonczyłes sesje i otrzymales $100!"; [100] call Client_fnc_sl_addCash_secure; };

	};

	if(_finish) exitwith {};

	uisleep 0.05;

	_timer = _timer + 0.05;

	if(_timer > 300) exitwith {}; 
	if(player distance getmarkerpos _marker > 700) exitwith {}; 
};


hint format["Twoje najszybsze okrążenie: %1",_myfastest];

_vehicle setVelocity [0, 0, 0];
uisleep 0.5;
_vehicle setVelocity [0, 0, 0];
player action ["Eject", vehicle player];
deletevehicle _vehicle;
player allowdamage true;

godmode = false;

_servercheck = false;
{
	_timecheck = call compile format["%1",(_x select 1)];
	if(_myfastest < _timecheck) then {
		_servercheck = true;
	};
}foreach rallyracetimes;

if(_servercheck) then {
	[_myfastest,name player] remoteexec ["server_fnc_updatefastestRally",2];
};

diag_log format ["Czas: %1",rallyracetimes];