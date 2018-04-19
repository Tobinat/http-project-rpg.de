disableSerialization;
_quantity = ctrlText 9339;
_quantity = call compile format["%1", _quantity];
if(_quantity > 23) then { _quantity = 23; };
format["Die Steuern wurden geändert auf %1% vom Bürgermeister der Stadt: %2",_quantity,name player] remoteexec ["hint",-2];
TaxRate = _quantity;
publicVariable "TaxRate";

[_quantity] remoteExec ["server_fnc_taxupdate",2];