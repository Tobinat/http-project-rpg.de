_player = _this select 0;

if(player distance myshop < 100) then {

	[player] remoteExec ["server_fnc_retreiveStoreCop",2];
	[_player,player,13,format ["%1 Durchsucht den Saftladen von %2", name _player, name player],""] remoteExec ["server_fnc_copLog", 2];
} else {

	[myshop,"Shop des Verdächtigen","Job"] remoteexec ["client_fnc_hudHelper",_player];
	
};