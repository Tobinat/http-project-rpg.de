params [
    ["_unit", objNull, [objNull]]
];

private _query = format ["SELECT exp_level, exp_total, exp_perkPoints, exp_perks FROM players WHERE playerid = '%1'", getPlayerUID _unit];

diag_log ("Requesting player experience data for user ID " + (getPlayerUID _unit) + " | Query (1): " + _query);

private _queryResult = [_query,2] call DB_fnc_asyncCall;

diag_log ("Requested player experience data for user ID " + (getPlayerUID _unit) + " | Query (2): " + str _queryResult);

if ((_queryResult param [3]) isEqualType "") then {
	_queryResult set [3, []];
};

diag_log ("Requested player experience data for user ID " + (getPlayerUID _unit) + " | Query (3): " + str _queryResult);

if (_queryResult isEqualTo []) then {
    _queryResult = [0, 0, 0, []];
} else {
	private _perks = _queryResult param[3];
	_perks call mav_ttm_fnc_tinyIntConverter;
	_queryResult set [3, _perks];
};

diag_log ("Requested player experience data for user ID " + (getPlayerUID _unit) + " | Query (4): " + str _queryResult);

_queryResult remoteExecCall ["mav_ttm_fnc_clientReceiveData", _unit];