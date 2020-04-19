/*
	fn_deleteMessages.sqf
	Author: project-rpg.de

	Löscht Nachrichten aus der Datenbank
*/
disableSerialization;

_allesnurwegenkevin = this select 0;

messages deleteAt _hurensohn;

_hurensohn = call compile format["%1", _allesnurwegenkevin];

_id = _hurensohn select 0;
hint format ["%1", _id];

[_id] remoteExec ["server_fnc_removemessage"];