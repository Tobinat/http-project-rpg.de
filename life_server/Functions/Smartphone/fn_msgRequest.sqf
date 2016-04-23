/*

	file: fn_msgRequest.sqf
	Author: Silex
	
	Fills the Messagelist
*/

params [["_uid", "", [""]], ["_player", objNull, [objNull]], "_queryResult", "_uid"];

_query = format["SELECT fromID, toID, message, fromName, toName FROM messages WHERE toID='%1' ORDER BY time DESC",_uid];

_queryResult = [_query,2,true] call DB_fnc_asyncCall;

if(count _queryResult isEqualTo 0) exitWith {};
{
	[1,_x] remoteExec ["life_fnc_smartphone",_player];
}forEach _queryResult;