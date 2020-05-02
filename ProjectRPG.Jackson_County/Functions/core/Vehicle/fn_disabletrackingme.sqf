if(isNil "trackingme") then { trackingme = []; };
if(trackingme isEqualTo []) exitwith { ["Keine Wanzen gefunden", false] spawn domsg; };

trackingme = [];
["tracking",false] remoteExec ["client_fnc_setvariable",trackingme];
["Wanze deaktiviert", false] spawn domsg;
