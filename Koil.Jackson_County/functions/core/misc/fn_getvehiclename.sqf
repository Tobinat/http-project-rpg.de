params ["_class"];

_return = getText(configFile >> "CfgVehicles" >> _class >> "displayName");

_return