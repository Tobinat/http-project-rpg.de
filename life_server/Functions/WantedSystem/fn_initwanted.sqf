private ["_query","_queryResult","_gesuchter"];
_query = "SELECT list,id from wanted";
_queryResult = [_query,2,true] call DB_fnc_asyncCall;
{
	_gesuchter = [_x select 0] call DB_fnc_mresToArray;
	if(typeName _gesuchter== "STRING") then {_gesuchter= call compile _gesuchter;};
	life_wanted_list = _gesuchter;
} forEach _queryResult;