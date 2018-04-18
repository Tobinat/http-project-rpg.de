if(isServer) exitwith {};
_racePositions = [
	[7881.09,5069.19,0.174423],[7890.75,5055.85,0.174423],[7910.4,5064.49,0.174458],[7918.23,5051.44,0.174431],[7935.01,5060.09,0.174458],[7942.76,5046.99,0.174416],[7959.4,5056.21,0.174446],[7967.59,5042.96,0.174423],
	[7984.33,5051.61,0.174423],[7991.96,5038.54,0.174423],[8008.62,5047.52,0.174412],[8016.5,5034.17,0.174404],[8033.48,5043.26,0.174381],[8040.93,5030.4,0.174397],[8058.05,5039.2,0.1744],[8065.73,5025.97,0.174419],
	[8082.52,5034.82,0.174393],[8090.41,5021.78,0.174366],[8107.52,5030.73,0.174408],[8115.14,5017.45,0.17437],[8132.21,5026.48,0.174397],[8139.69,5013.31,0.1744],[8156.47,5022.38,0.174408],[8164.22,5009.22,0.174328]
];

mypos = mypos - 1;
_vehicle =  vehicle player;

_racestart = _racePositions select mypos;
_vehicle setpos _racestart;
_vehicle setVelocity [0, 0, 0];

_vehicle setfuel 0;

sleep 0.5;

_vehicle setVelocity [0, 0, 0];
_vehicle setpos _racestart;
_vehicle setdir 280;

hint "3";
uisleep 1;
hint "2";
uisleep 1;
hint "1";
_vehicle setpos _racestart;
uisleep 1;
hint "START!";

player allowdamage false;
godmode = true;

private["_laps","_timer","_markerNum","_laptime","_finish","_myfastest"];


_vehicle setfuel 1;

_laps = 0;
_timer = 0;
_markerNum = 2;
_laptime = 999999;
_finish = false;
_myfastest = 999999;

for "_i" from 0 to 1 step 0 do {

	_marker = format["race_%1",_markerNum];

	if(player distance getmarkerpos _marker < 40) then {

		_markerNum = _markerNum + 1;

		if(_markerNum == 36) then { _markerNum = 1;  };

		if(_markerNum == 1) then { _laps = _laps + 1; _lapTime = _timer;  if(_laptime < _myfastest) then { _myfastest = _laptime; }; hint format["Your last laptime was: %1 seconds --- fastest: %2",_laptime,_myfastest];  _timer = 0; };

		if(_laps == 3) then { _finish = true; hint "Ukonczyles sesje i otrzymales $175!"; [175] call Client_fnc_sl_addCash_secure; };

	};

	if(_finish) exitwith {};

	uisleep 0.05;

	_timer = _timer + 0.05;

	if(_timer > 300) exitwith {}; // taking too long
	if(player distance getmarkerpos _marker > 700) exitwith {}; //too far from track
};


hint format["Twoje najlepszy czas: %1",_myfastest];

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
}foreach racetimes;

if(_servercheck) then {
	[_myfastest,name player] remoteexec ["server_fnc_updatefastest",2];
};