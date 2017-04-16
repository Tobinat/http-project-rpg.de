params ["_vcl"];

while {alive _vcl} do {
	while {_vcl getVariable ['siren',0] == 1 && !isNull driver _vcl} do {
		_vcl say3D "bf_qsiren";
		uisleep 10.22;
	};
	uisleep 0.01;
};