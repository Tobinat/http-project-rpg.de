_player = _this select 0;

if(player distance myshop < 100) then {

	[player] remoteExec ["server_fnc_retreiveStore",2];

} else {

	[myshop,"Persons Shop Location","Job"] remoteexec ["client_fnc_hudHelper",_player];
	
};