_vehicle = (vehicle player);

if(client_nos_count > 0 && _vehicle isKindOf "Car") then {
    if (client_can_use_nos) then {
        client_can_use_nos = false;
		if(client_nos_count == 0) exitWith {};

	    playSound3D ["vvv_fishingrod\sounds\wind2.ogg", player, false, getPosASL player, 1, 1, 8]; 

	    client_nos_count = client_nos_count - 1;

	    _lightRed = [15, 0.1, 5];

	    _lightleft = "#lightpoint" createVehicle getpos _vehicle;   
	    uiSleep 0.2;
	    _lightleft setLightColor _lightRed; 
	    _lightleft setLightBrightness 0.2;  
	    _lightleft setLightAmbient [20, 0.1, 0.1];
	    _lightleft lightAttachObject [_vehicle, [-0.02, -1, -2.82]];
	    _lightleft setLightAttenuation [0.1, 0, 1000, 130]; 
	    _lightleft setLightIntensity 5;
	    _lightleft setLightFlareSize 0.38;
	    _lightleft setLightFlareMaxDistance 120;
	    _lightleft setLightUseFlare true;
	    _lightleft setLightDayLight true;
	    _lightleft setLightBrightness 2;  

		_vel = velocity _vehicle;
		_dir = direction _vehicle;
		_speed = 3;
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2)];
		uiSleep 0.1;
		_vel = velocity _vehicle;
		_dir = direction _vehicle;
		_speed = 6;
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2)];
		uiSleep 0.1;
		_vel = velocity _vehicle;
		_dir = direction _vehicle;
		_speed = 7;
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2)];
		uiSleep 0.1;
		_vel = velocity _vehicle;
		_dir = direction _vehicle;
		_speed = 9;
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2)];
		uiSleep 0.1;
		_vel = velocity _vehicle;
		_dir = direction _vehicle;
		_speed = 5;
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2)];

		uiSleep 0.1;
		deleteVehicle _lightleft;
		uiSleep 3;
		[] call client_fnc_hudnos;

        sleep 300;
        client_can_use_nos = true;
        } else {
            ["Musisz odczekać zanim użyjesz nitro kolejny raz!", false] spawn domsg;
    };



} else {

	["Skonczyło Ci się nitro!", false] spawn domsg;

};