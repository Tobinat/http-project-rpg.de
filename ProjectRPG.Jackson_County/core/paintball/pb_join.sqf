if(cash_in_hand < 50) exitWith {hint "Du hast nicht genug Geld dabei! $50.";};

if (joinmode isEqualTo 0) then {
	_PUID = getPlayerUID player;
	hint "Eine Anfrage an den Server wurde gesendet, bitte warte einen Moment.";
	[_PUID] remoteExec ["TON_fnc_paintball",2];
	joinmode = 1;
} else {
	hint "Du befindest dich bereits in einer Lobby!";
};