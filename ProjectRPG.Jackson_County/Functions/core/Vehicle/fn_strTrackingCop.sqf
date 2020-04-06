if (myjob in ["Cop"]) then {
    if (client_aiad_actions >= 1) then {

	    _veh = _this select 0;
	    _player = _this select 1;
	    if (isNil "_veh") exitwith {};
	    _tracker1c = (_veh getVariable["tracker1c",true]);
	    _tracker2c = (_veh getVariable["tracker2c",true]);
	    _tracker3c = (_veh getVariable["tracker3c",true]);
	    _exit = false;

	    if (player == _tracker1c || player == _tracker2c || player == _tracker3c) exitwith {hint "Sie verfolgen dieses Fahrzeug bereits.";};


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



	    if (_exit) exitwith {hint "Sie können maximal 3 Tracker anbringen!";};

	    sleep 6;
	    hint "Tracker angebracht";

	    if (myjob == "cop") then {
		    [player,objnull,15,format ["%1 Plaziert eine Wanze", name player],""] remoteExec ["server_fnc_copLog", 2];
	    };
    } else {
        hint "Ich kann keine Wanze platzieren!";
    };
} else {
	hint "Ich bin kein Polizist, ich kann keine Wanze Platzieren!";
};
