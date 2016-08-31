private ["_car", "_lightB1", "_lightR1", "_lightW1", "_lightW2"];
_car = _this;
while {alive _car} do 
{
	waitUntil{(player distance _car) < 1000};
	if((isEngineOn _car) && ((_car animationPhase "lightbarAnim") > 0) && ((getDammage _car) < 0.7))then 
	{
		_car setObjectTexture [0, "\cl3_vehiclefunctions\lights\flash_CA.paa"];
		_lightB1 = "#lightpoint" createVehicleLocal getPos ( _car );
		_lightB1 attachTo [_car,[0,0,0],"ctl_blueLight1"];
		_lightB1 setLightBrightness 0.1;
		_lightB1 setLightAmbient[ 0, 0, 0.1 ];
		_lightB1 setLightColor[ 0, 0, 1 ];
		sleep 0.1;
		deleteVehicle _lightB1;	
		_car setObjectTexture [0, ""];
		sleep 0.1;		
		_car setObjectTexture [1, "\cl3_vehiclefunctions\lights\flash_CA.paa"];
		_lightR1 = "#lightpoint" createVehicleLocal getPos ( _car );
		_lightR1 attachTo [_car,[0,0,0],"ctl_redLight1"];
		_lightR1 setLightBrightness 0.1;
		_lightR1 setLightAmbient[ 0.1, 0, 0 ];
		_lightR1 setLightColor[ 1, 0, 0 ];
		sleep 0.1;
		deleteVehicle _lightR1;
		_car setObjectTexture [1, ""];
		sleep 0.1;		
		_car setObjectTexture [0, "\cl3_vehiclefunctions\lights\flash_CA.paa"];
		_car setObjectTexture [2, "\cl3_vehiclefunctions\lights\flash_CA.paa"];
		_lightW1 = "#lightpoint" createVehicleLocal getPos ( _car );
		_lightW1 attachTo [_car,[0,0,0],"ctl_whiteLight1"];
		_lightW1 setLightBrightness 0.1;
		_lightW1 setLightAmbient[ 0.1, 0.1, 0.1 ];
		_lightW1 setLightColor[ 1, 1, 1 ];
		sleep 0.1;
		deleteVehicle _lightW1;
		_car setObjectTexture [0, ""];
		_car setObjectTexture [2, ""];
		sleep 0.1;		
		_car setObjectTexture [1, "\cl3_vehiclefunctions\lights\flash_CA.paa"];
		_car setObjectTexture [3, "\cl3_vehiclefunctions\lights\flash_CA.paa"];
		_lightW2 = "#lightpoint" createVehicleLocal getPos ( _car );
		_lightW2 attachTo [_car,[0,0,0],"ctl_whiteLight2"];
		_lightW2 setLightBrightness 0.1;
		_lightW2 setLightAmbient[ 0.1, 0.1, 0.1 ];
		_lightW2 setLightColor[ 1, 1, 1 ];
		sleep 0.1;
		deleteVehicle _lightW2;
		_car setObjectTexture [1, ""];
		_car setObjectTexture [3, ""];
		sleep 0.1;
	} else {
		waitUntil{sleep 3;(isEngineOn _car) && (_car animationPhase "lightbarAnim") > 0 || ((getDammage _car) < 0.2)};
	};
};