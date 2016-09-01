_vehicle = _this select 0;

while{alive _vehicle}do{
	
	
	if(_vehicle animationPhase "BeaconsStart" > 0.5)then{		 // Intentionally Removed.
		
		
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


_vehicle animate ["Beacons_hide",1];
_vehicle animate ["Work_Lights_hide",1];
sleep 0.5;
_Spotlight1  = "Jonzie_Light_red" createVehicleLocal [0,0,100];
_Spotlight1 attachTo [_vehicle, [0, 0, -0.03], "lightrota1pos"];			[_vehicle, [0, -1, 0], "Usti hlavne"]; _light2 selectionPosition [lightrota1pos, Memory]


_light2 attachto [_vehicle,[0,0,0.2],"lightrota1pos"]; 

_light2 attachTo [_vehicle, _vehicle selectionPosition "lightrota1pos"];
_memoryPoint = "lightrota1pos";
_light2 attachTo [_light2, [0,0,0], _memoryPoint];

/*_Spotlight2  = "Jonzie_Light_Yellow_2" createVehicleLocal [0,0,100];
_Spotlight2 attachTo [_truck, [0, 0, -0.03], "light_mem_2"];

_light2  = "Jonzie_Light_red" createVehicleLocal [0,0,100];
_light2 setLightBrightness 1;
_light2 setLightAmbient [0.5, 0, 0.0];
_light2 setLightColor [1.0, 0, 0.0];
_light2 attachTo [_vehicle, [0, 0, -0.03], "lightrota1pos"];
_vehicle animate ["Beacons_hide",1];
_vehicle animate ["Work_Lights_hide",1];


_Spotlight4  = "Jonzie_Light_Yellow" createVehicleLocal [0,0,100];
_Spotlight4 attachTo [_truck, [0, 0, -0.03], "light_mem_4"];
_Spotlight5  = "Jonzie_Light_White" createVehicleLocal [0,0,100];
_Spotlight5 attachTo [_truck, [0, -0.2, 0], "light_mem_5"];
_Spotlight6  = "Jonzie_Light_White" createVehicleLocal [0,0,100];
_Spotlight6 attachTo [_truck, [0, -0.2, 0], "light_mem_6"];
exit;*/
