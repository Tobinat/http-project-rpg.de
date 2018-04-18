//[] spawn client_fnc_spreaddisease;
_myInjuries = player getVariable "playerInjuries";
_spread = _myinjuries select 10;
_list = player nearEntities ["Man", 5];
_players = [];
{
	if(goggles _x != "TAC_SF10") then {
		_players pushBack _x;
	};
} forEach _list;
[_spread] remoteexec ["client_fnc_givedisease",_players];