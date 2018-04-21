params ["_location"]; 
diag_log ["starting fire %1", _location]; 
if(count currentFire > 0) then { 
	[_location] remoteexec ["client_fnc_fireStart",-2]; 
	[_location] remoteexec ["client_fnc_jobMarker", currentFire];
	["Informacja","911: DO WSZYSTKICH JEDNOSTEK! NA MAPIE ZOSTAŁ OZNACZONY POŻAR! WSZYSTKIE JEDNOSTKI PROSZĘ SIĘ TAM UDAĆ W CELU UGASZENIU OGNIA!",[255,69,0,1],""] remoteExec ["Client_fnc_showNotification", currentFire];
}; 
