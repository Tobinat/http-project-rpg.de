/*
	fn_deleteMail.sqf
	Author: project-rpg.de

	Löscht Briefe aus der Datenbank
*/

_allesnurwegenkevin = _this select 0;

_allesnurwegenkevin = call compile format["%1", _allesnurwegenkevin];

_sovieldreck = mail select _allesnurwegenkevin;
mail deleteAt _allesnurwegenkevin;

_id = _sovieldreck select 0;

[_id] remoteexec ["server_fnc_removemmail",2];