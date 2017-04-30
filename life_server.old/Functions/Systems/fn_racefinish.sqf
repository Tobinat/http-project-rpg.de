private["_unit","_storename"];

_unit = param [0,ObjNull,[ObjNull]];

racemachine setVariable["racing",false,true];
racemachine setVariable["start",false,true];
racemachine setVariable["total",0,true];
racemachine setVariable["racefull",false,true];
_storename = 1;

rvehicle1 setVelocity [0, 0, 0];
deleteVehicle rvehicle1;
rvehicle2 setVelocity [0, 0, 0];
deleteVehicle rvehicle2;
rvehicle3 setVelocity [0, 0, 0];
deleteVehicle rvehicle3;
rvehicle4 setVelocity [0, 0, 0];
deleteVehicle rvehicle4;
rvehicle5 setVelocity [0, 0, 0];
deleteVehicle rvehicle5;
rvehicle6 setVelocity [0, 0, 0];
deleteVehicle rvehicle6;
rvehicle7 setVelocity [0, 0, 0];
deleteVehicle rvehicle7;
rvehicle8 setVelocity [0, 0, 0];
deleteVehicle rvehicle8;

uiSleep 3;
[1,format["LAKESIDE RACING: The race has ended - %1 was the winner and made $1000..",name _unit]] remoteExecCall ["life_fnc_broadcast",civilian];
