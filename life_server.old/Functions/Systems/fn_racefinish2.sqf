private["_unit","_storename"];

_unit = param [0,ObjNull,[ObjNull]];

racemachine2 setVariable["racing",false,true];
racemachine2 setVariable["start",false,true];
racemachine2 setVariable["total",0,true];
racemachine2 setVariable["racefull",false,true];
_storename = 1;

rrvehicle1 setVelocity [0, 0, 0];
deleteVehicle rrvehicle1;
rrvehicle2 setVelocity [0, 0, 0];
deleteVehicle rrvehicle2;
rrvehicle3 setVelocity [0, 0, 0];
deleteVehicle rrvehicle3;
rrvehicle4 setVelocity [0, 0, 0];
deleteVehicle rrvehicle4;
rrvehicle5 setVelocity [0, 0, 0];
deleteVehicle rrvehicle5;

uiSleep 3;
[1,format["LAKESIDE GO-KARTS: The race has ended - %1 was the winner and made $1000..",name _unit]] remoteExecCall ["life_fnc_broadcast",civilian];
