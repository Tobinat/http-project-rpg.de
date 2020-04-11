hint format ["Healing..."];
sleep 2;
player setDamage 0;
[player] call ace_medical_treatment_fnc_fullHealLocal;
hint format ["Done"];