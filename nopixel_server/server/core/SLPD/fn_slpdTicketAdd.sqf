/*
		Author: Kajetan "Kruk" Mruk
		Date: 19.03.2017
		Params: 
			0 - String, UID of suspect
			1 - String, UID of officer
			2 - Number, amount of ticket
			3 - String, reason
			4 - Number, amount of points
		Description: Insert ticket to the database
		Return: nothing
*/
_uid_suspect = _this select 0;
_uid_officer = _this select 1;
_amount = _this select 2;
_reason = _this select 3;
_points = _this select 4;
_queryString = format["insertSLPDTicket:%1:%2:%3:%4:%5", _uid_suspect, _uid_officer, _amount, _reason, _points];
_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;