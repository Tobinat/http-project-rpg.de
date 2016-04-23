/*

	file: fn_handleMessages.sqf
	Author: Silex

*/	
	
params [["_target", objNull, [objNull]], ["_msg", "", [""]], ["_player", objNull, [objNull]], ["_type", -1], "_to"];

switch(_type) do
{
	//normal message
	case 0:
	{
		if(isNULL _target)  exitWith {};
		_to = call compile format["%1", _target];
		[_msg,name _player,0] remoteExecCall ["clientMessage",_to];
		
		private["_query","_pid","_toID"];
		_pid = getPlayerUID _player;
		_toID = getPlayerUID _target;
		_msg = [_msg] call DB_fnc_mresString;
		_fromName = name _player;
		_toName = name _target;
		_query = format["INSERT INTO messages (fromID, toID, message, fromName, toName) VALUES('%1', '%2', '""%3""', '%4', '%5')",_pid,_toID,_msg,_fromName,_toName];
		
		[_query,1] call DB_fnc_asyncCall;
	};
	//message to cops
	case 1:
	{	
		[_msg,name _player,1] remoteExecCall ["clientMessage",west];
	};
	//to admins
	case 2:
	{	
		[_msg,name _player,2] remoteExecCall ["clientMessage",true];
	};
	//ems request
	case 3:
	{	
		[_msg,name _player,5] remoteExecCall ["clientMessage",independent];
	};
	//adminToPerson
	case 4:
	{
		_to = call compile format["%1", _target];
		if(isNull _to) exitWith {};
	
		[_msg,name _player,3] remoteExecCall ["clientMessage",_to];
	};
	//adminMsgAll
	case 5:
	{
		[_msg,name _player,4] remoteExecCall ["clientMessage",true];
	};
};