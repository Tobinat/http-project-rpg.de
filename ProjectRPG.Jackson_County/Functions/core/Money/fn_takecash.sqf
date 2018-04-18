if(bankrobber != 4) exitwith {};
bankrobber = 2;
_suitCases = ["kif_10k","kif_10k","kif_10k","kif_10k","kif_5k","kif_5k","kif_5k","kif_10k","kif_10k","kif_10k","kif_10k","kif_50k","kif_50k","kif_50k","kif_50k","kif_100k"];

for [{_i = 0}, {_i < 3}, {_i = _i + 1}] do {
	_item = _suitCases call BIS_fnc_selectRandom;
	player addItem _item;
};

_random = round(random(25000)) + 20000;
[format["Ukradles $%1, przez 5 minut służby porządkowe mają podgląd na Twoją pozycję", _random], false] call domsg;
[player,player,15,format ["%1 ukradł %2 $ z banku!", name player, _random],""] remoteExec ["server_fnc_actionLog", 2];
[_random] call Client_fnc_sl_addCash_secure;
closedialog 0;
player setvariable ["robber",true,true];
sleep 300;
player setvariable ["robber",nil,true];