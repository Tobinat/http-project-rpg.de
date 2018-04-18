
_veht = _this select 0;

if (isNil "_veht") exitwith {};

player playmove "AinvPknlMstpSnonWnonDnon_medic_1";

_veht setvariable ["trackingCop",false,false];
//_veht setvariable ["tracker1",objNull,true];

hint format["Pluskwa została usunięta"];
//_veh2 = name _veht;

//hint format["Pluskwa z %1 została usunięta", _veh2];