vehiclePressure = 0;
currentlyUpdating = false;

[] spawn { (findDisplay 46) displayAddEventHandler["KeyDown","
 
    _currentKey = _this select 1;
    if(_currentKey == 17 && !currentlyUpdating) then {
        if(vehicle player != player) then {
            currentlyUpdating = true;
            Gearphase = (vehicle player) animationSourcePhase ""gear"";
            [] spawn {
               
                while{currentlyUpdating} do {
                    _phase = vehicle player animationSourcePhase ""RPM"";
                    if(_phase > 2000) then {
                       vehiclePressure = vehiclePressure + 0.2;
                       _gearphase = vehicle player animationSourcePhase ""gear"";
                        if(_gearphase > gearphase && vehiclePressure > 3) then {                 
                            vehiclePressure = 0;
                            currenltyUpdating = false;
                            playSound3D [""CG_turbo\sounds\turbo2.ogg"", vehicle player, false, getPosasl (vehicle player), 1, 1, 45];
                            Gearphase = (vehicle player) animationSourcePhase ""gear"";
                             vehicle player animate[""backfire"", 1];
                            sleep 0.1;
                            vehicle player animate[""backfire"", 0];                           
                        };
                        if(_gearphase < gearphase && vehiclePressure > 3) then {                 
                            vehiclePressure = 0;
                            currenltyUpdating = false;
                            Gearphase = (vehicle player) animationSourcePhase ""gear"";
                            vehicle player animate[""backfire"", 1];
                            sleep 0.1;
                            vehicle player animate[""backfire"", 0];                           
                        };                       
                    };
                    sleep 0.05;
                };
            };
 
        }; 
    };
 
"]; };


[] spawn { (findDisplay 46) displayAddEventHandler["KeyUp","
 

    _currentKey = _this select 1;
    if(_currentKey == 17 && currentlyUpdating) then {
        if(vehicle player != player) then {
            if(vehiclePressure > 4) then {
                vehiclePressure = 0;
                currenltyUpdating = false;
                playSound3D [""CG_turbo\sounds\turbo2.ogg"", vehicle player, false, getPosasl (vehicle player), 1.1, 1, 45];
                Gearphase = (vehicle player) animationSourcePhase ""gear"";
                vehicle player animate[""backfire"", 1];
                sleep 0.1;
                vehicle player animate[""backfire"", 0];                
            };

            if(vehiclePressure == 3) then {
                vehiclePressure = 0;
                currenltyUpdating = false;
                playsound ""cgturbo2"";
                playSound3D [""CG_turbo\sounds\turbo2.ogg"", vehicle player, false, getPosasl (vehicle player), 1, 1.1, 45];
                Gearphase = (vehicle player) animationSourcePhase ""gear"";
                vehicle player animate[""backfire"", 1];
                sleep 0.1;
                vehicle player animate[""backfire"", 0];               
            };

            if(vehiclePressure == 2) then {
                vehiclePressure = 0;
                currenltyUpdating = false;
                playsound ""cgturbo3"";
                playSound3D [""CG_turbo\sounds\turbo2.ogg"", vehicle player, false, getPosasl (vehicle player), 0.9, 1.4, 45];
                Gearphase = (vehicle player) animationSourcePhase ""gear"";
                 vehicle player animate[""backfire"", 1];
                sleep 0.1;
                vehicle player animate[""backfire"", 0];               
            };

            if(vehiclePressure == 1) then {
                vehiclePressure = 0;
                currenltyUpdating = false;
                playSound3D [""CG_turbo\sounds\turbo2.ogg"", vehicle player, false, getPosasl (vehicle player), 0.8, 1, 45];
                Gearphase = (vehicle player) animationSourcePhase ""gear"";
                vehicle player animate[""backfire"", 1];
                sleep 0.1;
                vehicle player animate[""backfire"", 0];               
            };

            vehiclePressure = 0;
            currentlyUpdating = false;
        };     
    };
 
"]; };