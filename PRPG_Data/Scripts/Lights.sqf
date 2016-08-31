_vehicle = _this select 0;
_flasherTimer = _this select 1;
_flashers1 = _this select 2;
_flashers2 = _this select 3;

while{alive _vehicle}do{
	if(_vehicle animationPhase "BeaconsStart" > 0.5)then{
		{
			_vehicle setHit [_x, 1];
		}forEach _flashers1;
		{
			_vehicle setHit [_x, 0];
		}forEach _flashers2;
		sleep _flasherTimer;
		{
			_vehicle setHit [_x, 1];
		}forEach _flashers2;
		{
			_vehicle setHit [_x, 0];
		}forEach _flashers1;
	}else{
		{
			_vehicle sethit [_x, 0];
		}forEach _flashers1;
		{
			_vehicle sethit [_x, 0];
		}forEach _flashers2;
	};
};