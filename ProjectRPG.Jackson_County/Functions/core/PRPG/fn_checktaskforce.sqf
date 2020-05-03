[] spawn {
	while {true} do {
		_playeruid = getPlayerUID player;
        //if ( _playeruid in ["76561198124199916","76561198061326977"] ) then { _isadmin = true;} else { _isadmin = false; };
		_isadmin = false;

		_onTsServer = "PRPG" == (call TFAR_fnc_getTeamSpeakServerName);
		_onChannel = "TaskForceRadio" == (call TFAR_fnc_getTeamSpeakChannelName);

		if !(_onTsServer && _onChannel && _isadmin) then {
            titleText ["Task Force Radio loaded succesfully","BLACK IN"];
		};
		sleep 5;
	};
};