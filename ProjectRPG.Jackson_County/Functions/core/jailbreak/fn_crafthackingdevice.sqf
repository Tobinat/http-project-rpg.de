
_total = {_x == "cg_lockpick"} count magazines player;

if(_total == 0) exitwith { ["Du brauchst einen Lockpick.", false] spawn domsg; };

_chance = random ( 100 );
if(_chance > 75) then {
	player additem "cg_hackingtool";
	["Du warst Erfolgreich.", false] spawn domsg;
	player removeItem "cg_lockpick";
} else { ["Das hat leider nicht geklappt.", false] spawn domsg; };