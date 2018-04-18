//startjury - [] spawn client_fnc_startJury;

_allHCs = entities "HeadlessClient_F";
_allHPs = allPlayers - _allHCs;

_players = [];
_n = 7;

while {_n > 0} do {
	_fuckingguy = _allHPs call BIS_fnc_selectRandom;
	if(isNil "_fuckingguy") exitwith {};
	_pia = _allHPs FIND _fuckingguy;
	_allHPs deleteAT _pia;
	_players pushback _fuckingguy;
	uisleep 0.05;
	_n = _n - 1;
};

[name player, getpos player, player] remoteexec ["client_fnc_jurycall",_players];
hint "Lawa przysieglych została wezwana - proszę czekać."