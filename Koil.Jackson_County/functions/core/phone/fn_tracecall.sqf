[player] remoteexec ["client_fnc_trackedby",currentcursortarget];

if(isNil "TracingPlayers") then { TracingPlayers = []; };

TracingPlayers pushback currentcursortarget;