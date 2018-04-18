// [] call client_fnc_disabletrackingme;
// send packet to all people tracking me to disable the variable
// call this function when a player removes a tracking device from self with a tool or hospital?

if(isNil "trackingme") then { trackingme = []; };

if(trackingme isEqualTo []) exitwith {};

["tracking",false] remoteExec ["client_fnc_setvariable",trackingme];

trackingme = [];