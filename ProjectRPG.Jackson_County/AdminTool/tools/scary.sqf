_abraxasObj = nearestObjects [player, ["Land_Ketchup_01_F"], 10];

_abraxasSounds = ["Sounds\Test\1.ogg", "Sounds\Test\2.ogg", "Sounds\Test\3.ogg", "Sounds\Test\4.ogg"];
_abraxasSound = selectRandom _abraxasSounds;

if((count _abraxasObj) == 1) then{
	_flasche = nearestObject [player, "Land_Ketchup_01_F"];
	_flaschenPosition = position _flasche;
	playSound3D [PRPG_MissionPath + _abraxasSound, _abraxasObj, false, _flaschenPosition, 5, 1, 100];
	removeAllActions _flasche;
	
	[] call 666Abraxas;
};

666Abraxas = {
	[] call TimeNight;
	[] call FogOn;
	
	player setPos[9843.7031,1.023777,8721.1729];
	
	[] call 666Lightning;
};

TimeNight = {
[{
setDate[2012, 9, 1, 21, 0];
}, "BIS_fnc_Spawn", false, false] call BIS_Fnc_MP;
[{
setDate[2012, 9, 1, 21, 0];
}, "BIS_fnc_Spawn", true, false] call BIS_Fnc_MP;
};

FogOn = {
[{
0 setFog 1;
forceWeatherChange;
}, "BIS_fnc_Spawn", true, false] call BIS_Fnc_MP;
};

666Lightning = {
		_pos = position player;
		_bolt = "LightningBolt" createVehicle _pos;
		_bolt setdamage 1;
		_light = "#lightpoint" createVehicle _pos;
		_light setposatl [(_pos select 0) + 100,(_pos select 1) + 100,(_pos select 2) + 10];
		_light setLightDayLight true;
		_light setLightBrightness 300;
		_light setLightAmbient [0.05, 0.05, 0.1];
		_light setlightcolor [1, 1, 2];

		sleep 0.1;
		_light setLightBrightness 0;
		sleep (random 0.1);

		_class = ["lightning1_F","lightning2_F"] call bis_Fnc_selectrandom;
		_lightning = _class createVehicle _pos;


		_duration = if (isnull cursortarget) then {(3 + random 1)} else {1};

		for "_i" from 0 to _duration do {
		_time = time + 0.1;
		_light setLightBrightness (300 + random 999);
		waituntil {
		time > _time
		};
		};

		deletevehicle _lightning;
		deletevehicle _light;
};