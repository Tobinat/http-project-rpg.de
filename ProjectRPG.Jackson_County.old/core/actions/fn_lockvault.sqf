/*
lockvault

cgbankvault is the variable name
*/

if (side player == west && cgbankvault animationPhase "d_l_Anim" == 1) then {
	["Du verschließt den Tresor.", false] spawn domsg;
	uiSleep 5;
	cgbankvault animate ["d_l_Anim",0];
	cgbankvault setVariable["hacked", nil, true];
	["Tresor verschlossen.", false] spawn domsg;
} else {
	["Du besitzt nicht den passenden Schlüssel.", false] spawn domsg;
};