if(isNull cursorTarget) exitWith { createdialog "FindPlayer_Menu"; };
if(!(cursorTarget IN playableUnits)) exitWith { createdialog "FindPlayer_Menu"; };
if(player distance cursorTarget > 4) exitWith { createdialog "FindPlayer_Menu"; };
[cursorTarget] spawn client_fnc_medicUpdater;
