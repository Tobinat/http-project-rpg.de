/*
	Script By Nyor
*/
cutText ["Repair activated.", "PLAIN"];
_timeForRepair = 5;
_veh = (vehicle player);
hint format ["Bitte warte %1 Sekeunde für Repair/Flip",_timeForRepair];
sleep _timeForRepair;
_veh setFuel 1;
_veh setDamage 0;
_veh setVehicleAmmo 1;
_veh setpos [getpos _veh select 0, getpos _veh select 1, 0.5];
foreach (nearEntities ["LandVehicle", 20] + nearEntities ["Air",20] + nearEntities ["Ship",20])