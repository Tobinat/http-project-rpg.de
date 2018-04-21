_payment = _this select 0; 
 
diag_log ["paying mayor %1", _payment]; 
 
 
if(isNil "theMayor") exitwith {}; 
 
[_payment] remoteexec ["Client_fnc_sl_addCash_secure",theMayor]; 
 
_currentcash = theMayor getVariable "sl_atm_silverlake"; 
_new = _currentcash + _payment; 
theMayor setVariable ["sl_atm_silverlake", _new, false]; 
