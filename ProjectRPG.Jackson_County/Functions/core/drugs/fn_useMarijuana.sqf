/*
	File: fn_useMarijuana.sqf
	Description:
	Use Marijuana Effect
*/

private["_smoke","_playerdo"];
life_bonging = true;
playSound3D ["cg_sndimg\sounds\bong.ogg", player, false, getPosASL player, 1, 1, 45];

_unit = player;
_int = 1;

	_source = "logic" createVehicleLocal (getpos _unit);
	_smoke = "#particlesource" createVehicle getpos _source;
	_smoke setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 13,0],   "",    "Billboard",    0.5,    0.5,    [0,0,0],   [0, 0.2, -0.2],    1, 1.275, 1, 0.2,    [0, 0.2,0],    [[0.1,1,0.1, _int], [1,1,1, 0.01], [1,1,1, 0]],    [1000],    1,    0.04,    "",    "",    _source];
	_smoke setParticleRandom [2, [0, 0, 0], [0.65, 0.65, 0.65], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];
	_smoke setDropInterval 0.001;
	_source attachto [_unit,[0,0.15,0], "neck"];
	uiSleep 3.5;
	detach _source;
	deletevehicle _source;

_num = 400;
while{_num > 0} do {
	uiSleep 7;
	_num = _num - 1;
	if(_num == 4) then {
		["Dein Rausch endet in 30 Sekunden!", false] spawn domsg;
	};
	if(_num == 2) then {
		["Dein Rausch endet in 15 Sekunden!", false] spawn domsg;
	};
};
["Dein Rausch ist beendet.", false] spawn domsg;
life_bonging = false;