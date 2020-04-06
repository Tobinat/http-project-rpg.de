if(isNil "trackingme") then { trackingme = []; };
if(trackingme isEqualTo []) exitwith { ["Keine Wanzen gefunden", false] call domsg; };

trackingme = [];
["tracking",false] remoteExec ["client_fnc_setvariable",trackingme];
["Wanze deaktiviert", false] call domsg;
