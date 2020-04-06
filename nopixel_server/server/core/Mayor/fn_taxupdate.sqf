_quantity = _this select 0;

diag_log ["tax update %1", _quantity];


_updatestr = format ["updateTax:%1:%2", _quantity,2];
_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
