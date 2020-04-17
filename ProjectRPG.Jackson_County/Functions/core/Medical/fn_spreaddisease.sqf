//[] spawn client_fnc_spreaddisease;
_myInjuries = player getVariable "playerInjuries";
_spread = _myinjuries select 10;
_list = player nearEntities ["Man", 2];
_players = [];
{
	if(goggles _x != "Mask_M40" && goggles _x != "Masque_Chirurgical" && uniform _x != "vvv_hazmat") then {
		_players pushBack _x;
	};
} forEach _list;
[_spread] remoteexec ["client_fnc_givedisease",_players];