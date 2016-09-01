/*
close vault

cgbankvault is the variable name
*/

if ( cgbankvault animationPhase "d_o_Anim" == 1 ) then {
	["Tresor-Schließung eingeleitet.", false] spawn domsg;
	uiSleep 5;
	cgbankvault animate ["d_o_Anim",0];
	["Tresor wird/ist geschlossen.", false] spawn domsg;
} else {
	["Der Tresor ist bereits geschlossen!", false] spawn domsg;
};