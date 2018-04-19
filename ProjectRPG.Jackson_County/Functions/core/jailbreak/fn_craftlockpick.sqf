_chance = random ( 100 );
if(_chance > 85) then {
	player additem "cg_lockpick";
	hint "Es hat funktioniert.";
} else { hint "Dieses mal hat es nicht funktioniert."; };