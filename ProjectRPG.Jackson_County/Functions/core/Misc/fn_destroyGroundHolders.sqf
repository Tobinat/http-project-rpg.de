// [player] spawn client_fnc_destroyGroundHolders;

_objectPos = _this select 0;

_clear = nearestObjects [_objectPos,["weaponholder"],3];
_clear = _clear + nearestObjects [_objectPos,["groundWeaponHolder"],3];
_destroyed = 0;
for "_i" from 0 to count _clear - 1 
do
{
        _destroyed = _destroyed + 1;
        deleteVehicle (_clear select _i);
        uiSleep 0.05;
};
_destroyed = _destroyed - 1;