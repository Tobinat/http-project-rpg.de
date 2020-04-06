/*
open vault

cgbankvault is the variable name
*/

if (cgbankvault animationPhase "d_o_Anim" == 0 && cgbankvault animationPhase "d_l_Anim" == 1) then {
	["Dann starten wir mal", false] spawn domsg;
	uiSleep 5;
	["Joo bin voll dabei", false] spawn domsg;
	cgbankvault animate ["d_o_Anim",1];
} else {
	["Der Tresor ist ja noch verschlossen/ schon offen", false] spawn domsg;
};