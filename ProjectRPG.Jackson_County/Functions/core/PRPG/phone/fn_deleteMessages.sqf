/*
	fn_deleteMessages.sqf
	Author: project-rpg.de

	Löscht Nachrichten aus der Datenbank
*/
disableSerialization;

_allesnurwegenkevin = this select 0;

messages deleteAt _allesnurwegenkevin;

_id = _allesnurwegenkevin select 0;

[_id] remoteExec ["server_fnc_removemessage"];