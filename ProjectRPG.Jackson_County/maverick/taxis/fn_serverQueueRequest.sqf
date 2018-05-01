/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_player", objNull, [objNull]],
	["_destinationPosition", [], [[]]]
];

diag_log "1";
if (!isServer) exitWith {};
diag_log "2";
if !(_player in playableUnits) exitWith {};
diag_log "3";
if !(count _destinationPosition == 3) exitWith {};
diag_log "4";
if (count (mav_taxi_v_callQueue select { (_x param [0, objNull]) isEqualTo _player}) > 0) exitWith {};
diag_log "5";

// Queue player
private _callId = round (random 100000);
mav_taxi_v_callQueue pushBack [
	_player,
	serverTime,
	_callId,
	_destinationPosition
];

publicVariable "mav_taxi_v_callQueue";

// Send back result
[_callId] remoteExecCall ["mav_taxi_fnc_setCallId", _player];