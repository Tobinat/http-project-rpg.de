_car = _this select 0;
_light = "\red_suburban_15_e\textures\Lightbar.paa";

while {alive _car} do {
	if(_car getVariable ["lightbar",0] == 1)then{
		_car setObjectTexture[1,_light];
		_car setObjectTexture[2,""];
		_car setObjectTexture[3,_light];
		_car setObjectTexture[4,""];
		_car setObjectTexture[5,_light];
		_car setObjectTexture[6,""];
		_car setObjectTexture[7,_light];
		_car setObjectTexture[8,""];
		_car setObjectTexture[9,_light];
		_car setObjectTexture[10,""];
		_car setObjectTexture[11,""];
		_car setObjectTexture[12,_light];

		uisleep 0.1;

		_car setObjectTexture[1,""];
		_car setObjectTexture[2,""];
		_car setObjectTexture[3,""];
		_car setObjectTexture[4,""];
		_car setObjectTexture[5,""];
		_car setObjectTexture[6,""];
		_car setObjectTexture[7,""];
		_car setObjectTexture[8,""];
		_car setObjectTexture[9,""];
		_car setObjectTexture[10,""];
		_car setObjectTexture[11,""];
		_car setObjectTexture[12,""];

		uisleep 0.1;

		_car setObjectTexture[1,""];
		_car setObjectTexture[2,_light];
		_car setObjectTexture[3,""];
		_car setObjectTexture[4,_light];
		_car setObjectTexture[5,""];
		_car setObjectTexture[6,_light];
		_car setObjectTexture[7,""];
		_car setObjectTexture[8,_light];
		_car setObjectTexture[9,""];
		_car setObjectTexture[10,_light];
		_car setObjectTexture[11,_light];
		_car setObjectTexture[12,""];

		uisleep 0.1;

		_car setObjectTexture[1,""];
		_car setObjectTexture[2,""];
		_car setObjectTexture[3,""];
		_car setObjectTexture[4,""];
		_car setObjectTexture[5,""];
		_car setObjectTexture[6,""];
		_car setObjectTexture[7,""];
		_car setObjectTexture[8,""];
		_car setObjectTexture[9,""];
		_car setObjectTexture[10,""];
		_car setObjectTexture[11,""];
		_car setObjectTexture[12,""];

		uisleep 0.1;
	} else {
		_car setObjectTexture[1,""];
		_car setObjectTexture[2,""];
		_car setObjectTexture[3,""];
		_car setObjectTexture[4,""];
		_car setObjectTexture[5,""];
		_car setObjectTexture[6,""];
		_car setObjectTexture[7,""];
		_car setObjectTexture[8,""];
		_car setObjectTexture[9,""];
		_car setObjectTexture[10,""];
		_car setObjectTexture[11,""];
		_car setObjectTexture[12,""];

		uisleep 0.05;
	};
	uisleep 0.05;
};
