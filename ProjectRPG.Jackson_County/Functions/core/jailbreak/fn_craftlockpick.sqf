_chance = random ( 100 );
if(_chance > 85) then {
	player additem "cg_lockpick";
	hint "Udało się!";
} else { hint "Nie tym razem"; };