if (myjob in ["Cop"]) then {
    if (client_aiad_actions >= 1) then {

	    _veh = _this select 0;
	    _player = _this select 1;
	    if (isNil "_veh") exitwith {};
	    _tracker1c = (_veh getVariable["tracker1c",true]);
	    _tracker2c = (_veh getVariable["tracker2c",true]);
	    _tracker3c = (_veh getVariable["tracker3c",true]);
	    _exit = false;

	    if (player == _tracker1c || player == _tracker2c || player == _tracker3c) exitwith {hint "Już śledzisz ten pojazd";};


	    player playmove "AinvPknlMstpSnonWnonDnon_medic_1";

	    _veh setvariable ["trackingCop",true,false];

	    if (isNull _tracker1c) then 
	    {
		_veh setvariable ["tracker1c",_player,true];
	    } else { if (isNull _tracker2c) then 
		    {
		    _veh setvariable ["tracker2c",_player,true];
	    	}else {	if (isNull _tracker3c) then 
		    	{
			    _veh setvariable ["tracker3c",_player,true];
			    } else {_exit = true;};};};	
	


	    if (_exit) exitwith {hint "Max sledzacych = 3";};

	    sleep 6;
	    hint "Pluskwa podlożona";

	    if (myjob == "cop") then {
		    [player,objnull,15,format ["%1 podłożył pluskwę", name player],""] remoteExec ["server_fnc_copLog", 2];
	    };
    } else {
        hint "Nie jestem w aiad, nie mogę tego zrobić!";
    };
} else {
	hint "Nie jestem w policji, nie mogę tego zrobić!";
};