params["_fuel","_damage","_license"];
_insertstr = format ["updateVehicleFuelDamage:%1:%2:%3", _fuel,_damage , _license];
_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;