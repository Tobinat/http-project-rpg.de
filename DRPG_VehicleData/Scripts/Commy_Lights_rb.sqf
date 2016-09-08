_obj = _this select 0;

_obj setHit["LightsRed",1];
_obj setHit["LightsBlue",1];

_obj setHit["lightrota1",1]; // blue
_obj setHit["pos2rota",1];  //Red
_obj setHit["pos3rota",1]; // ohne
_obj setHit["pos4rota",1]; //Blue
_obj setHit["pos5rota",1]; // Red

 
 

 //if(isServer and isDedicated)exitWith{};

// 2 / 5 red
while{alive _obj}do{

	
	if(_obj animationPhase "IdleHide" == 1)then{
		_obj action ["LightOn", _obj];
		//blue
		_obj setHit["lightrota1",1];
		_obj setHit["pos2rota",0];
		_obj setHit["pos3rota",0];
		_obj setHit["pos4rota",1];
		_obj setHit["pos5rota",0];
		
		_obj setHit["LightsRed",0];
		_obj setHit["LightsBlue",0];
		
		//idle
		
		sleep 0.5;
	
		
		//red
		_obj setHit["lightrota1",0];
		_obj setHit["pos2rota",1];
		_obj setHit["pos3rota",0];
		_obj setHit["pos4rota",0];
		_obj setHit["pos5rota",1];
		
		_obj setHit["LightsRed",1];
		_obj setHit["LightsBlue",1];
		
		sleep 0.5;
		
		
	}else{
		
		_obj setHit["LightsRed",1];
		_obj setHit["LightsBlue",1];
		
		_obj setHit["lightrota1",1]; // blue
		_obj setHit["pos2rota",1];  //Red
		_obj setHit["pos3rota",1]; // ohne
		_obj setHit["pos4rota",1]; //Blue
		_obj setHit["pos5rota",1]; // Red
	
	
	};
	sleep 0.1;
};	