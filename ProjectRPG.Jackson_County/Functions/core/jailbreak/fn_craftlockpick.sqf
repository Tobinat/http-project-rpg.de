_chance = random ( 100 );
if(_chance > 85) then {
	player additem "cg_lockpick";
	["Du warst Erfolgreich.", false] spawn domsg;
} else { ["Das hat leider nicht geklappt.", false] spawn domsg; };