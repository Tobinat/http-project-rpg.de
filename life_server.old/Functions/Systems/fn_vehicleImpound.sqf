private["_vehicle","_impound","_vInfo","_vInfo","_plate","_uid","_query","_sql","_unit","_imp"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_impound = [_this,1,false,[true]] call BIS_fnc_param;
_unit = [_this,2,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _vehicle OR isNull _unit) exitWith {life_impound_inuse = false; (owner _unit) publicVariableClient "life_impound_inuse";life_garage_store = false;(owner _unit) publicVariableClient "life_garage_store";}; //Bad data passed.

_vInfo = _vehicle getVariable["dbInfo",[]];
if(count _vInfo > 0) then
{
 _plate = _vInfo select 1;
 _uid = _vInfo select 0;
 //_imp = _vInfo select 11;
};

if(_impound) then
{
 if(count _vInfo == 0) then 
 {
 _query = format["UPDATE vehicles SET active='0', impound='1' WHERE pid='%1' AND plate='%2'",_uid,_plate];

 _thread = [_query,1] call DB_fnc_asyncCall;
 //waitUntil {scriptDone _thread};
 if(!isNil "_vehicle" && {!isNull _vehicle}) then {
 deleteVehicle _vehicle;
 };
 life_impound_inuse = false;
 (owner _unit) publicVariableClient "life_impound_inuse";
 
 }
 else
 {
 _query = format["UPDATE vehicles SET active='0', impound='1' WHERE pid='%1' AND plate='%2'",_uid,_plate];

 _thread = [_query,1] call DB_fnc_asyncCall;
 //waitUntil {scriptDone _thread};
 if(!isNil "_vehicle" && {!isNull _vehicle}) then {
 deleteVehicle _vehicle;
 };
 life_impound_inuse = false;
 (owner _unit) publicVariableClient "life_impound_inuse";
 };
};