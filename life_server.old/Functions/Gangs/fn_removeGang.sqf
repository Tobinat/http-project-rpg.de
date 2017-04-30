/*
	
	
	Description:
	Blah
*/

params [["_group", grpNull, [grpNull]], "_groupID", "_result"];

if(isNull _group) exitWith {};

_groupID = _group getVariable["gang_id",-1];
if(_groupID == -1) exitWith {};


[format["UPDATE gangs SET active='0' WHERE id='%1'",_groupID],1] call DB_fnc_asyncCall;

_result = [format["SELECT id FROM gangs WHERE active='1' AND id='%1'",_groupID],2] call DB_fnc_asyncCall;
if(count _result isEqualTo 0) then {
	[_group] remoteExecCall ["life_fnc_gangDisbanded",(units _group)];
	uiSleep 5;
	deleteGroup _group;
};