/*
		Author: Kajetan "Kruk" Mruk
		Date: 16.03.2017
		Params: 
			0 - String, Type of update
			1 - Array, data
		Description: Updates data in the database
		Return: nothing
*/
params["_player","_officer","_time","_reason"];
_uid_player = getPlayerUID _player;
_uid_officer = getPlayerUId _officer;

//Inserting into DB
_queryString = format["insertSLPDPrison:%1:%2:%3:%4:%5", _uid_player, _uid_officer, _time, _time, _reason];
_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;

//Execing jail
["jail_player", _player, 1] call server_fnc_slpdPrisonGet;