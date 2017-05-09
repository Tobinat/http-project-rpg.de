//[_POSITION] remoteexec ["client_fnc_fireStart",-2];

params ["_location"];

_num = 3;

while {_num > 0 } do {

	_radiusspread = (random 5) + 1;
	_height = (random 100) / 100;
	_rotation = (random 100) / 100;
	_size = random 5;
	_thickness = ((random 100) / 100) + 0.3;
	_angle = (random 100) / 100;
	_moveVel = (random 100) / 100;
	_size2 = (random 100) / 100;

	_PS = "#particlesource" createVehicleLocal _location;  
	  
	_ps setParticleCircle [_radiusSpread, [0, 0, 0]];  
	_ps setParticleRandom [20, [0.25, 0.25, _height], [0.2, 0.2, _rotation], 0, _size, [0, 0, 0, _thickness], _angle, 0];  
	_ps setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal.p3d", 8, 3, 1], "", "Billboard", 1, 8, [0, 0, 0], [0, 0, _moveVel], 0, 10, 7.9, _size2, [1, 3, 6], [[0.5, 0.5, 0.5, 0.15], [0.75, 0.75, 0.75, 0.075], [1, 1, 1, 0]], [0.125], 1, 0, "", "", _location];  
	_ps setDropInterval 0.05; 

	FIRES PUSHBACK [_PS,_location];
	_num = _num - 1;
	
};