 
_debug = false;
 
_fetchstr = format["rallyracetimes:%1",1]; 
_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync; 
_returned = str _fetch; 

_fetchstr1 = format["rallyracetimes:%1",2]; 
_fetch1 = [_fetchstr1, 2] call ExternalS_fnc_ExtDBasync; 
_returned1 = str _fetch1; 

_fetchstr2 = format["rallyracetimes:%1",3]; 
_fetch2 = [_fetchstr2, 2] call ExternalS_fnc_ExtDBasync; 
_returned2 = str _fetch2; 

rallyracetimes = _fetch;
rallyracetimes append _fetch1;
rallyracetimes append _fetch2;

publicvariable "rallyracetimes"; 

if(_debug) then {
diag_log "rally time update?"; 
diag_log format ["tabela: %1",rallyracetimes]; 
};