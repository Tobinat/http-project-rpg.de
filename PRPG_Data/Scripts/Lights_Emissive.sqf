_vehicle = _this select 0;

while{alive _vehicle}do{
	
	//_vehicle animateSource ["Rotary", 0];
	if(_vehicle animationPhase "BeaconsStart" > 0.5)then{		 // Intentionally Removed.
		//_vehicle animateSource ["Rotary", 1];
		_light1 = "#lightpoint" createVehicleLocal getPos _vehicle;
		_light1 setLightBrightness 0.4;
		_light1 setLightAmbient [0.0, 0, 0.5];
		_light1 setLightColor [0.0, 0, 1.0];
		_light1 lightAttachObject [_vehicle, [0,0,-2]];
			sleep 0.1;
		deleteVehicle _light1;
	
			sleep 0.1;
		_light2 = "#lightpoint" createVehicleLocal getPos _vehicle;
		_light2 setLightBrightness 0.4;
		_light2 setLightAmbient [0.5, 0, 0.0];
		_light2 setLightColor [1.0, 0, 0.0];
		_light2 lightAttachObject [_vehicle, [0,0,-2]];
			sleep 0.1;
			deleteVehicle _light2;
		sleep 0.1;
	};
};
