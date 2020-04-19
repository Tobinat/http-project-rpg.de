/*
	fn_deleteMessages.sqf
	Author: project-rpg.de

	Löscht Nachrichten aus der Datenbank
*/

_allesnurwegenkevin = this select 0;

hint format ["%1", _allesnurwegenkevin];

_hurensohn = messages find _allesnurwegenkevin;

messages deleteAt _hurensohn;

_id = _allesnurwegenkevin select 0;

[_id] remoteexec ["server_fnc_removemessage",2];