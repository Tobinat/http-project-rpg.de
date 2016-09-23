hint format ["Healing..."];
sleep 2;
player setDamage 0;
[player,player] call ace_medical_fnc_treatmentAdvanced_fullHealLocal;
hint format ["Done"];