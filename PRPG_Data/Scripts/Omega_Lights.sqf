_car = _this select 0;

while{alive _car}do{
	if(_car animationPhase "BeaconsStart" > 0.5)then{
		_car setHit["Light_Blue_H",0];
		_car setHit["Light_Red_H",1];

		sleep 0.05;

		_car setHit["Light_Blue_H",1];
		_car setHit["Light_Red_H",1];

		sleep 0.05;
		player action["LightOn",vehicle player];
		_car setHit["Light_Blue_H",0];
		_car setHit["Light_Red_H",1];

		sleep 0.05;

		_car setHit["Light_Blue_H",1];
		_car setHit["Light_Red_H",1];

		sleep 0.05;

		_car setHit["Light_Blue_H",1];
		_car setHit["Light_Red_H",0];

		sleep 0.05;
		player action["LightOn",vehicle player];
		_car setHit["Light_Blue_H",1];
		_car setHit["Light_Red_H",1];

		sleep 0.05;

		_car setHit["Light_Blue_H",1];
		_car setHit["Light_Red_H",0];

		sleep 0.05;
		player action["LightOn",vehicle player];
		_car setHit["Light_Blue_H",1];
		_car setHit["Light_Red_H",1];

		sleep 0.05;

	}else{
		_car setHit["Light_Blue_H",1];
		_car setHit["Light_Red_H",1];
	};
};