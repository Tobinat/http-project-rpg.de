if(bankrobber != 4) exitwith {};
bankrobber = 2;
_suitCases = ["kif_10k","kif_10k","kif_10k","kif_10k","kif_5k","kif_5k","kif_5k","kif_10k","kif_10k","kif_10k","kif_10k","kif_50k","kif_50k","kif_50k","kif_50k","kif_100k"];

for [{_i = 0}, {_i < 3}, {_i = _i + 1}] do {
	_item = _suitCases call BIS_fnc_selectRandom;
	player addItem _item;
};

_random = round(random(25000)) + 20000;
[format["Gestohlen $%1, Für 5 Minuten hat der Sicherheitsdienst eine deine Position", _random], false] call domsg;
[player,player,15,format ["%1 hat %2 $ aus der Bank mitgehen lassen!", name player, _random],""] remoteExec ["server_fnc_actionLog", 2];
[_random] call Client_fnc_sl_addCash_secure;
closedialog 0;
player setvariable ["robber",true,true];
sleep 300;
player setvariable ["robber",nil,true];