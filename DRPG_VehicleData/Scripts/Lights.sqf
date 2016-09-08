_vehicle = _this select 0;
_flasherTimer = _this select 1;
_flashers1 = _this select 2;
_flashers2 = _this select 3;
while{alive _vehicle}do{
	if(_vehicle animationPhase "BeaconsStart" > 0.5)then{
		_vehicle setHit ["Light_L",1];
		_vehicle setHit ["Light_R",0];

		sleep 1;
		
		_vehicle setHit ["Light_L",0];
		_vehicle setHit ["Light_R",1];

		sleep 1;
	}else{
		_vehicle setHit ["Light_L",0];
		_vehicle setHit ["Light_R",0];
	};
};