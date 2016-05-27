#include <macro.h>
disableSerialization;
private["_control","_index","_className","_dataArr","_vehicleInfo","_retrievePrice"];
_control = _this select 0;
_index = _this select 1;

//Fetch some information.
_dataArr = _control lbData _index; _dataArr = call compile format["%1",_dataArr];
_className = _dataArr select 0;
_vehicleInfo = [_className] call life_fnc_fetchVehInfo;

_retrievePrice = [_className,__GETC__(life_impound_prices)] call TON_fnc_index;
_retrievePrice = if(_retrievePrice == -1) then {1000} else {(__GETC__(life_impound_prices) select _retrievePrice) select 1;};

(getControl(28000,28030)) ctrlSetStructuredText parseText format[
    (localize "STR_Shop_IMPVEH")+ " <t color='#8cff9b'>$%1</t><br/>
    ",
	_retrievePrice];
//[_retrievePrice] call life_fnc_numberText];

ctrlShow [28030,true];
ctrlShow [28300,true];