params [["_uid", "", [""]]];

if (count pb_spieler isEqualTo 0 && pb_spielstatus isEqualTo 0) then {
	[] remoteExec ["TON_fnc_game",2];
	pb_spielstatus = 1;
};

if (pb_spielstatus isEqualTo 1) then {
	_uidarr = [_uid];
	_geld = param [1,0,[0]];
	if (_geld>=50) then {
		pb_spieler = pb_spieler + _uidarr;
		[5,"You have been successfully registered for the upcoming game!"] remoteExec ["life_fnc_pb_response",_uid];
	} else {
		[1,"You need 50$!"] remoteExec ["life_fnc_pb_response",_uid];
	};
};

if ((pb_spielstatus==2&&count pb_spieler>=2)||(count pb_spieler==pb_maxspieler)) then {
	[1,"The game has already begun..!"] remoteExec ["life_fnc_pb_response",_uid];
};