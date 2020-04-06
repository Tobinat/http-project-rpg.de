_player = _this select 0;

if(player distance myshop < 100) then {

	[player] remoteExec ["server_fnc_retreiveStoreCop",2];
	if (myjob == "cop") then {
	[_player,player,13,format ["%1 Durchsucht den Saftladen von %2", name _player, name player],""] remoteExec ["server_fnc_copLog", 2];
	};
} else {

	[myshop,"Dein Shop wird durchsucht!","Job"] remoteexec ["client_fnc_hudHelper",_player];
	
};