params["_cash"];

hint format["Ukradles %1",_cash];
[_cash] call Client_fnc_sl_addCash_secure;
_chance = random(100);
if(_chance < 95) then {
	[player, currentCursorTarget, "personRobbery"] spawn client_fnc_createEvidence;
};