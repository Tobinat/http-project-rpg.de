myupdate = false;
uisleep 2;
_myInjuries = player getVariable "playerInjuries";
_myInjuriesToUpdate = player getVariable "playerInjuriesToUpdate";
player setVariable ["playerInjuries",_myInjuriesToUpdate,true];
myUpdate = true;	