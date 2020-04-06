params["_target"];

if(count currentsecurity > 0) then {
	_player = currentsecurity call BIS_fnc_selectRandom;
	[getpos _target,"cop"] remoteexec ["client_fnc_jobMarker", _player];
	["Dispatch: Eine Gefahr wurde auf der Karte Markiert!", false] remoteExec ["domsg", _player];
	[getpos _target,"cop"] remoteexec ["client_fnc_jobMarker", currentCop];
	["911: Eine Gefahr wurde auf der Karte Markiert!", false] remoteExec ["domsg", currentCop];
} else {
	[getpos _target,"cop"] remoteexec ["client_fnc_jobMarker", currentCop];
	["911: Eine Gefahr wurde auf der Karte Markiert!", false] remoteExec ["domsg", currentCop]; 
};
diag_log ["Start event, robbery: %1", _target];
