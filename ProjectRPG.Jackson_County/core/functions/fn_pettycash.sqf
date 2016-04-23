// petty cash piles
_pettycash = _this select 0;
if ( cgbankvault animationPhase "d_o_Anim" != 1 ) exitWith {
	["Die Tresortür ist noch verschlossen!",30,"red"] spawn domsg;
};

if (_pettycash getVariable ["robbed", false]) exitwith {["Das beste von dem Geldhaufen wurde schon eingepackt!",30,"red"] spawn domsg;};
_pettycash setVariable ["robbed", true, true];
_funds = 500 + round(random 3500); 

[_pettycash,true] remoteExecCall ["TON_fnc_hideThis",2];
[format ["Du hast %1 $ aufgehoben!",_funds], false] spawn domsg;
["cash","add",_funds] call life_fnc_handleCash;