/*for "_i" from 0 to 1 step 0 do  {
    {
        if (_x isKindOf "Man") then {deleteVehicle _x}
    } forEach allDeadMen;
     sleep 1; 
};*/
private["_unit","_id","_uid"];
_unit = _this select 0;
_id = _this select 1;
_uid = _this select 2;
if(isNull _unit) exitWith {};
{
	_pid = getPlayerUID _x;
	
	if(_uid isEqualTo _pid OR _pid isEqualTo "" OR owner _x < 3) then {
		deleteVehicle _x; //Get rid of the corpse when dead.
	}
} foreach allDeadMen;

{
	_pid = getPlayerUID _x;
	
	if(_uid isEqualTo _pid OR _pid isEqualTo "" OR owner _x < 3) then {
		deleteVehicle _x; //Get rid of the corpse when client dc's while alive.
	}
} foreach playableUnits;
deleteVehicle _unit;