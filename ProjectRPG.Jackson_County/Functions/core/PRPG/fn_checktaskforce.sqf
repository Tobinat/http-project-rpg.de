_playeruid = getPlayerUID player;
if ( _playeruid in ["76561198124199916","76561198061326977"] ) then { _isadmin = true;} else { _isadmin = false; };

if (_isadmin) exitWith {};

_onTsServer = "PRPG" == (call TFAR_fnc_getTeamSpeakServerName);
_onChannel = "TaskForceRadio" == (call TFAR_fnc_getTeamSpeakChannelName);
_tfcheck = player getVariable "tfcheck";
if ( !(_onTsServer) || !(_onChannel) ) then {
    titleText ["Stelle sicher das du im Richtigen Channel und TS-Server bist!","BLACK"];
	player setVariable ["tfcheck",true,true];
};

if (_onTsServer && _onChannel && _tfcheck) then {
	titleText ["TaskForceRadio läuft!","BLACK IN"];
	player setVariable ["tfcheck",false,true];
};