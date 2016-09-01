#include <macro.h>
private["_vehicle","_vid","_pid","_unit","_price"];
disableSerialization;
if(lbCurSel 28020 == -1) exitWith {hint localize "STR_Global_NoSelection"};
_vehicle = lbData[28020,(lbCurSel 28020)];
_vehicle = (call compile format["%1",_vehicle]) select 0;
_vid = lbValue[28020,(lbCurSel 28020)];
_pid = getPlayerUID player;
_unit = player;
if(isNil "_vehicle") exitWith {hint localize "STR_Garage_Selection_Error"};
_price = [_vehicle,__GETC__(life_impound_prices)] call fnc_index;
if(_price == -1) then {_price = 1000;} else {_price = (__GETC__(life_impound_prices) select _price) select 1;};
if(cash_in_bank < _price) exitWith {hint format[(localize "STR_Garage_CashError"),_price]};
if(typeName life_garage_sp == "ARRAY") then {
    [_vid,_pid,life_garage_sp select 0,_unit,_price,life_garage_sp select 1] remoteExecCall ["TON_fnc_spawnVehicle",2];
} else {
        [_vid,_pid,(getMarkerPos life_garage_sp),_unit,_price,markerDir life_garage_sp] remoteExecCall ["TON_fnc_spawnVehicle",2];
    };
//cash_in_bank = cash_in_bank - _price;
["bank","take",_price] call life_fnc_handleCash;
hint localize "STR_Garage_SpawningVeh";