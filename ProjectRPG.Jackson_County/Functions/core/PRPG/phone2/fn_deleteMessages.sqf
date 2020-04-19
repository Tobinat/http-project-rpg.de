/*
	fn_deleteMessages.sqf
	Author: project-rpg.de

	Löscht Nachrichten aus der Datenbank
*/

_allesnurwegenkevin = _this select 0;

_sovieldreck = messages select _allesnurwegenkevin;
messages deleteAt _allesnurwegenkevin;

_id = _sovieldreck select 0;

[_id] remoteexec ["server_fnc_removemessage",2];