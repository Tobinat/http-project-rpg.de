
_total = {_x == "cg_lockpick"} count magazines player;

if(_total == 0) exitwith { hint "You need a lockpick"; };

_chance = random ( 100 );
if(_chance > 75) then {
	player additem "cg_hackingtool";
	hint "You were successful";
} else { hint "You failed"; };