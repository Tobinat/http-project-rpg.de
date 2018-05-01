/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_description", [], [[]]],
	["_position", [], [[], objNull]],
	["_type", "default", [""]]
];

if (isNil "mav_taxi_v_currentTask" || {isNull mav_taxi_v_currentTask}) then {
	mav_taxi_v_currentTask = player createSimpleTask ["mav_taxi_task"];
};

mav_taxi_v_currentTask setSimpleTaskDescription _description;
mav_taxi_v_currentTask setSimpleTaskType _type;
mav_taxi_v_currentTask setSimpleTaskAlwaysVisible true;
mav_taxi_v_currentTask setTaskState "Assigned";

if ((typeName _position) isEqualTo (typeName objNull)) then {
	mav_taxi_v_currentTask setSimpleTaskTarget [_position, true];
} else {
	mav_taxi_v_currentTask setSimpleTaskDestination _position;
};