// [player] remoteexec ["client_fnc_trackingme",_target]; _target setvariable ["tracking",true,false]; -- target should now be tracked.
// do this when you place a device on a PLAYER only.

params ["_tracker"];

if(isNil "trackingme") then { trackingme = []; };

trackingme pushback _tracker;