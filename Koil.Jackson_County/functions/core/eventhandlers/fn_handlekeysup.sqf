//handle keys
params ["_ctrl", "_code", "_shift", "_ctrlKey", "_alt", ["_handle", false, [false]], "_interactionKey"];







switch (_code) do
{

	case 17:
	{
            if(vehicle player != player && str(typeof (vehicle player)) find "_2" > -1 ) then {
        	 _phase = vehicle player animationSourcePhase "RPM";
            if(vehiclePressure > 3 && currentlyUpdating && _phase > 5000) then {
            	[] spawn {
                    playSound3D ["CG_turbo\sounds\turbo1.ogg", vehicle player, false, getPosasl (vehicle player), 1, 1, 22];
	                vehicle player animate["backfire", 1];
	                uisleep 0.1;
	                vehicle player animate["backfire", 0];	 
                };                               
        	};           
        	vehiclePressure = 0;
	        currenltyUpdating = false; 
	        Gearphase = (vehicle player) animationSourcePhase "gear";  
        };     
    };
};

_handle;