//[_location] remoteExec ["client_fnc_startSecurity",_player];
//[getpos player,] remoteExec ["client_fnc_startGarbage",_player];
// use lexus with directionals only.

private ["_warning","_JobBase"];
if(!dispatch) then {
	dispatch = true;
	[] spawn {
		playertasks = [];

		_warnings = 0;
		while{dispatch} do {
			uisleep 180;
			paycheck = paycheck + 10;
		};
		//[player] remoteExec ["server_fnc_quitDispatch",2];
	};
};
