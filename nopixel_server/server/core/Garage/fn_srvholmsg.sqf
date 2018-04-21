params ["_fura","_player"];

//_fura = _this select 0;
//_player = _this select 1;

_fura = _fura getvariable "information";
 
[_fura,_player] remoteexec ["client_fnc_clholmsg",_player]; 