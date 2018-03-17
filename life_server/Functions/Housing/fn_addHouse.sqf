/*
	
	
	Description:
	Blah
*/

params [["_uid", "", [""]], ["_house", objNull, [objNull]]];

if(isNull _house OR _uid isEqualTo "") exitWith {};

_housePos = getPosATL _house;

_query = format["INSERT INTO houses (pid, pos, inventory, containers, owned, shared1, shared2, shared3, shared4, shared5) VALUES('%1', '%2', '""[[],0]""', '""[]""', '1','','','','','')",_uid,_housePos];

[_query,1] call DB_fnc_asyncCall;
[_housePos,_uid,_house] spawn 
{
	params ["_housePos", "_uid", "_house"];

	uiSleep 0.3;

	_query = format["SELECT id FROM houses WHERE pos='%1' AND pid='%2' AND owned='1'",_housePos,_uid];
	_queryResult = [_query,2] call DB_fnc_asyncCall;

	_house setVariable["house_id",(_queryResult select 0),true];
};
