#include <macro.h>
private["_vehicles","_control"];
disableSerialization;
_vehicles = [_this,0,[],[[]]] call BIS_fnc_param;

ctrlShow[28030,false];
ctrlShow[28300,false];
waitUntil {!isNull (findDisplay 28000)};

if(count _vehicles == 0) exitWith
{
    ctrlSetText[28110,localize "STR_Garage_NoImpVehicles"];
};

_control = ((findDisplay 28000) displayCtrl 28020);
lbClear _control;
{

    _vehicleInfo = [_x select 2] call life_fnc_fetchVehInfo;
    _control lbAdd (_vehicleInfo select 3);
    _tmp = [_x select 2,_x select 8];
    _tmp = str(_tmp);
    _control lbSetData [(lbSize _control)-1,_tmp];
    _control lbSetPicture [(lbSize _control)-1,_vehicleInfo select 2];
    _control lbSetValue [(lbSize _control)-1,_x select 0];
} foreach _vehicles;

ctrlShow[28100,false];
ctrlShow[28110,false];