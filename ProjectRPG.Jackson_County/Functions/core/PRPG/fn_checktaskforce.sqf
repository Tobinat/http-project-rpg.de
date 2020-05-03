if (isNil "TFAR_fnc_isTeamSpeakPluginEnabled") exitwith {
	
	999999 cutText ["Task Force Radio ist nicht aktiviert!","BLACK FADED"];
	999999 cutFadeOut 99999999;
	if (player getvariable "taskfr") then {
		player setvariable ["taskfr",false,true];
	};
};



_TFenabled = [] call TFAR_fnc_isTeamSpeakPluginEnabled;

if (!(_TFenabled)) then {

	while {!([] call TFAR_fnc_isTeamSpeakPluginEnabled)} do {
		
		titleText ["Aktiviere das Taskforce Radio Plugin! || TS3 -> Settings -> Plugins", "BLACK"];
		sleep 2;
		if (player getvariable "taskfr") then {
		player setvariable ["taskfr",false,true];
		};
	};
};

Dvid_TFEnabled = true;
Dvid_onTsServer = "PRPG" == (call TFAR_fnc_getTeamSpeakServerName);
Dvid_onChannel = "TaskForceRadio" == (call TFAR_fnc_getTeamSpeakChannelName);
titleText ["Task Force Radio loaded succesfully","BLACK IN"];
_playeruid = getPlayerUID player;
if ( _playeruid in ["76561198124199916","76561198061326977"] ) then { _isadmin = true;} else { _isadmin = false; };
[] spawn {
	while {true} do {
		_TFenabled = [] call TFAR_fnc_isTeamSpeakPluginEnabled;
		if ((!(_TFenabled)) && (Dvid_TFEnabled)) then {
			if (!(_isadmin)) then {
				titleText ["Aktiviere dein TaskForcePlugin! || TS3 -> Einstellungen -> Erweiterungen", "BLACK"];
				Dvid_TFEnabled = false;
			};
			if (player getvariable "taskfr") then {
				player setvariable ["taskfr",false,true];
			};
		};

		_onTsServer = "PRPG" == (call TFAR_fnc_getTeamSpeakServerName);
		if (!(_onTsServer)) then {
			if (!(_isadmin)) then {
				titleText ["Komm auf den TS3 Server! IP: ts.project-rpg.de", "BLACK"];
				Dvid_onTsServer = false;
			};
			if (player getvariable "taskfr") then {
				player setvariable ["taskfr",false,true];
			};
		} else {
			if (!(Dvid_onTsServer)) then {
				if (!(_isadmin)) then {
					titleText ["Task Force Check bestanden, Willkommen!","BLACK IN"];
					Dvid_onTsServer = true;
				};
				if (!(player getvariable "taskfr")) then {
					player setvariable ["taskfr",true,true];
				};
			};
		};
					
		_onChannel = "TaskForceRadio" == (call TFAR_fnc_getTeamSpeakChannelName);
		if (!(_onChannel)) then {
			if (!(_isadmin)) then {
				titleText ["Bitte lade das Task Force Plugin neu! || Settings -> Plugins -> Reload All", "BLACK"];
				Dvid_onChannel = false;
			};
			if (player getvariable "taskfr") then {
				player setvariable ["taskfr",false,true];
			};
		} else {
			if (!(Dvid_onChannel)) then {
				titleText ["Task Force Check bestanden, Willkommen!","BLACK IN"];
				Dvid_onChannel = true;
				if (!(player getvariable "taskfr")) then {
					player setvariable ["taskfr",true,true];
				};
			};
		};
						
		if ((_TFenabled) && (!(Dvid_TFEnabled))) then {
			titleText ["Plugin aktiviert!","BLACK IN"];
			Dvid_TFEnabled = true;
			if (!(player getvariable "taskfr")) then {
				player setvariable ["taskfr",true,true];
			};
		};
				
		sleep 2;	
	};
};