
_debug = false;
 
_fetchstr = format["racetimes:%1",1]; 
_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync; 

_fetchstr1 = format["racetimes:%1",2]; 
_fetch1 = [_fetchstr1, 2] call ExternalS_fnc_ExtDBasync;  

_fetchstr2 = format["racetimes:%1",3]; 
_fetch2 = [_fetchstr2, 2] call ExternalS_fnc_ExtDBasync;  

racetimes = _fetch;
racetimes append _fetch1;
racetimes append _fetch2;

publicvariable "racetimes"; 
 
if(_debug) then {
diag_log "race times update?";
diag_log format ["tabela: %1",racetimes]; 
};