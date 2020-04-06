/*
_null=this execVM "The-Programmer\AdvancedIdentity\init.sqf";
*/
_this allowDamage false; 
_this enableSimulation false;
_this addAction [(["STR_CREATE_CARD","The_Programmer_Settings_Identity","Identity_Localization"] call theprogrammer_core_fnc_localize),{[0] call the_programmer_identity_fnc_IdentityMenuCard},"",0,false,false,"",'((identity_nom == "") && (identity_prenom == ""))'];
