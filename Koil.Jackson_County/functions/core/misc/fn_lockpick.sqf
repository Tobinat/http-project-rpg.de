if(currentcursortarget iskindof "man") then {
	[] remoteExec ["client_fnc_unrestrained",currentcursortarget];
};

if(currentcursortarget iskindof "car"  || currentcursortarget iskindof "boat" || currentcursortarget iskindof "Air") then {
	current_cars pushback currentcursortarget;
};