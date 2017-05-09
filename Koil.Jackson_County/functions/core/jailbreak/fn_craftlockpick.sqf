_chance = random ( 100 );
if(_chance > 85) then {
	player additem "cg_lockpick";
	hint "You were successful";
} else { hint "You failed"; };