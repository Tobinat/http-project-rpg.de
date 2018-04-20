params["_type"];
if (_type == 1) exitWith {player addItem "kif_25k"; [player,objNull,17,format ["%1 hat einen Koffer mit 25 000 $ genommen.", name player],"25 000$"] remoteExec ["server_fnc_copLog", 2];};
if (_type == 2) exitWith {player addItem "kif_100k"; [player,objNull,17,format ["%1 hat einen Koffer mit 100 000 $ genommen.", name player],"100 000$"] remoteExec ["server_fnc_copLog", 2];};
if (_type == 3) exitWith {player addItem "kif_50k"; [player,objNull,17,format ["%1 hat einen Koffer mit 50 000 $ genommen.", name player],"50 000$"] remoteExec ["server_fnc_copLog", 2];};
if (_type == 4) exitWith {player addItem "kif_10k"; [player,objNull,17,format ["%1 hat einen Koffer mit 10 000 $ genommen.", name player],"10 000$"] remoteExec ["server_fnc_copLog", 2];};
if (_type == 5) exitWith {player addItem "kif_5k"; [player,objNull,17,format ["%1 hat einen Koffer mit 5 000 $ genommen.", name player],"5 000$"] remoteExec ["server_fnc_copLog", 2];};