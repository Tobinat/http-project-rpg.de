/*
	File: fn_medicRequest.sqf
	
	
	Description:
	Notifies the medics that someone has requested emergency and prompts them
	if they want to take the request or not.
*/
private["_caller","_callerName","_task"];
params [
	["_caller",objNull,[objNull]],
	["_callerName","Unknown Player",[""]],
	["_pos",[],[[]]]
];

if(isNull _caller) exitWith {}; //Bad data

_task = player createSimpleTask [format["patient_%1_%2",_callerName,_pos]];
_task setSimpleTaskDescription [format["Verletzte Person: %1, Position: %2 | %3",_callerName,_pos select 0, _pos select 1],format["Patient: %1",_callerName],format["Patient: %1",_callerName]];

_task setSimpleTaskDestination _pos;
_task setTaskState "Assigned";
player setCurrentTask _task;

life_tasks pushBack _task;