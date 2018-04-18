
_total = {_x == "cg_lockpick"} count magazines player;

if(_total == 0) exitwith { hint "Potrzebujesz wytrychu"; };

_chance = random ( 100 );
if(_chance > 75) then {
	player additem "cg_hackingtool";
	hint "Udało się!";
} else { hint "Nie tym razem"; };