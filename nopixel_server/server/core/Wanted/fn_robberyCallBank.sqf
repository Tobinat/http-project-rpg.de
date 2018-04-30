params["_target"];

if(count currentsecurity > 0) then {
	_player = currentsecurity call BIS_fnc_selectRandom;
	[getpos _target] remoteexec ["client_fnc_jobMarker", _player];
	["Dispatch: Eine Gefahr in der Bank wurde auf der Karte Markiert!", false] remoteExec ["domsg", _player];
	[getpos _target] remoteexec ["client_fnc_jobMarker", currentCop];
	["911: Eine Gefahr in der Bank wurde auf der Karte Markiert!", false] remoteExec ["domsg", currentCop];
	["dbank"] remoteExec ["client_fnc_playSound", currentCop];
	//if (myjob == "cop") then {playSound "dbank";};
} else {
	[getpos _target] remoteexec ["client_fnc_jobMarker", currentCop];
	["911: Eine Gefahr in der Bank wurde auf der Karte Markiert!", false] remoteExec ["domsg", currentCop];
	["dbank"] remoteExec ["client_fnc_playSound", currentCop];
	//if (myjob == "cop") then {playSound "dbank";};
};
diag_log ["Start event, bank robbery: %1", _target];
