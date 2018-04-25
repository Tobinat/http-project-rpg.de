_uid = _this select 0;
if (_uid isEqualTo getPlayerUID player) then {
	[player] spawn client_fnc_revived;
	["SET",0] spawn client_fnc_doHealth;
} else {};