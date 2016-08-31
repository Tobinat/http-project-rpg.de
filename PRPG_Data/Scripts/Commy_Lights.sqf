_obj = _this select 0;

_obj setHit["LightsRed",1];
_obj setHit["LightsBlue",1];
while{alive _obj}do{


	if(_obj animationPhase "IdleHide" > 0.5)then{
		_obj setHit["LightsRed",0];
		_obj setHit["LightsBlue",0];
		(driver _obj) action["LightsOn", _obj];
	}else{
		_obj setHit["LightsRed",1];
		_obj setHit["LightsBlue",1];
	};

	sleep 0.5;
};	