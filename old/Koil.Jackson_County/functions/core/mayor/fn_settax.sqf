disableSerialization;
_quantity = ctrlText 9339;
_quantity = call compile format["%1", _quantity];
if(_quantity > 20) then { _quantity = 20; };
format["Tax set to %1% by the City Mayor: %2",_quantity,name player] remoteexec ["hint",-2];
TaxRate = _quantity;
publicVariable "TaxRate";