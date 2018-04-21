params["_target"]; 

if(count currentsecurity > 0) then { 
	_player = currentsecurity call BIS_fnc_selectRandom; 
	[getpos _target] remoteexec ["client_fnc_jobMarker", _player];
	["DYSPOZYTOR: TRWA NAPAD NA BANK, LOKALIZACJA OZNACZONA NA MAPIE!", false] remoteExec ["domsg", _player]; 
	[getpos _target] remoteexec ["client_fnc_jobMarker", currentCop]; 
	["911: TRWA NAPAD NA BANK, LOKALIZACJA OZNACZONA NA MAPIE, WEZWANA EKIPA OCHRONIARZY!", false] remoteExec ["domsg", currentCop];
	["dbank"] remoteExec ["client_fnc_playSound", currentCop];
	//if (myjob == "cop") then {playSound "dbank";};
} else { 
	[getpos _target] remoteexec ["client_fnc_jobMarker", currentCop];
	["911: TRWA NAPAD NA BANK, LOKALIZACJA OZNACZONA NA MAPIE, BRAK OCHRONIARZY DO POMOCY!", false] remoteExec ["domsg", currentCop]; 
	["dbank"] remoteExec ["client_fnc_playSound", currentCop];
	//if (myjob == "cop") then {playSound "dbank";};
}; 
diag_log ["Start event, bank robbery: %1", _target];