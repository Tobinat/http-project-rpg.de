_newVehicle = _this select 0; 
[getPlayerUID player, _newVehicle, "Add", player] remoteExec ["Server_fnc_garageUpdate",2];
_garage = player getVariable "garage"; 
_garage pushback _newVehicle; 
player setvariable["garage",_garage,false];