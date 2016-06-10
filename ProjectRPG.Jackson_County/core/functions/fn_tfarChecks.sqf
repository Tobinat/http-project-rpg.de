/*
	File: fn_tfarChecks.sqf
	Author: Marcel "VariatoX" Koch
	Server: project-rpg.de

	Description:
	Blendet eine Nachricht mit schwarzem Hintergrund ein, sobald der Spieler gegen die genannten Checks verstößt.

*/

if(call(life_adminlevel) >= 1) exitWith {["TFAR > Du bist ein Administrator. Daher wird dein Client nicht auf TFAR geprüft.",false] spawn domsg;};

prpg_fnc_checkTfar = {
	_serverName = "[GER] Project-RPG.de | ArmA 3 Life";
	_tfarChannel = ["» Projektleitung - Lounge 1 « NDA","» Projektleitung - Lounge 2 «","» Admin - Lounge 1 «","» Admin - Lounge 2 «","» Scripter - Lounge 1 «","» Scripter - Lounge 2 «","» Supporter - Lounge 1 «","» Supporter - Lounge 2 «","» Support 01 «","» Support 02 «","» Support 03 «","» Support 04 «","» Support 05 «","TaskForceRadio"];

	if(!(call TFAR_fnc_isTeamSpeakPluginEnabled)) exitWith {true};
	if((call TFAR_fnc_getTeamSpeakServerName) != _serverName) exitWith {true};
	if(!((call TFAR_fnc_getTeamSpeakChannelName) in _tfarChannel)) exitWith {true};
	false;
};

while {true} do {
	uiSleep 0.01;
	_cd = false;
	if(call prpg_fnc_checkTfar) then {
		_cd = true;
		titleText ["== BITTE AKTIVIERE DEIN TASK FORCE RADIO UND PRÜFE, OB DU AUF DEM RICHTIGEN SERVER UND IM RICHTIGEN RAUM BIST ==","BLACK"];
		uiSleep 8;
		titleText [" ","BLACK IN"];
	};

	if(_cd) then {
		uiSleep 1;
	} else {
		uiSleep 10;
	};
};