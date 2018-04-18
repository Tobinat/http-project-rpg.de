private["_n","_i","_localprotection"];



if(isNil "globalProtection") then { globalProtection = 0; };
if(globalProtection != 0) exitwith { hint "Już przerabiam"; };
_localProtection = 0;


_total = {_x == "CG_DrugBrick"} count magazines player;
_i = _total;

playSound3D ["CG_Jobs\sounds\meth\drugBoil.ogg", player, false, getPosasl player, 31, 1, 15];

while{ _i > 0 } do {


	_localProtection = _localprotection + 1;
	globalProtection = globalProtection + 1;
	if(_localProtection != globalProtection) exitwith { [1,"Refine Pelt Script"] spawn client_fnc_anticheat; };


	player removeitem "CG_DrugBrick";
	_chance = random(100);
	if(_chance > 75) then { player additem "CG_Heroin"; } else { player additem "CG_Cocaine"; };

	_i = _i - 1;
	uisleep 0.25;
	if(dialog) then { closedialog 0; };
	hint "Przetwarzasz paczki narkotyków, stój w miejscu!";

};


globalProtection = 0;
