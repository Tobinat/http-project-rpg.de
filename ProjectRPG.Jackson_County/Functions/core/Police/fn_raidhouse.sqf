_player = _this select 0;

if(player distance myhouse < 100) then {

	[player] remoteExec ["server_fnc_retreivehouseCop",2];
	if (myjob == "cop") then {
	[_player,player,12,format ["%1 Durchsucht das Haus von %2", name _player, name player],""] remoteExec ["server_fnc_copLog", 2];
	};

} else {
	[myhouse,"Dein Haus wird durchsucht!","Job"] remoteexec ["client_fnc_hudHelper",_player];
};