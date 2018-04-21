/*
_iddd = 1;

_updatestr = format ["updatePrison:%1:%2", _length, _uidplayer]; 
_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery; 

//_fetchstr = format ["mafiaBank:%1", _iddd];
//_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync;

mafiabank = call compile format ["%1",_fetch select 0 select 0];
//mafiabank = format["%1",_fetch];
publicvariable "mafiaBank";


diag_log "mafia bank";
 */
 private["_id"];
_id = parseNumber "1";
_debug = 1;

_query = format ["getMafiaATM:%1", _id];
_queryResult = [_query,2] call ExternalS_fnc_ExtDBasync;

//mafiaBank = str _queryResult;
mafiaBank = call compile format ["%1",_queryResult select 0 select 0];
publicvariable "mafiaBank";
//mafiabank = format["%1",_queryResult];



if(_debug == 1) then {
	
	diag_log "------------- Insert Query Request -------------";
	diag_log format["QUERY: %1",_query];
	diag_log format["Result: %1",_queryResult];
	diag_log "------------------------------------------------";
};