if(isNil "trackingme") then { trackingme = []; };
if(trackingme isEqualTo []) exitwith { ["Nie znaleziono pluskwy", false] call domsg; };

trackingme = [];
["tracking",false] remoteExec ["client_fnc_setvariable",trackingme];
["Wyłączono pluskwę", false] call domsg;