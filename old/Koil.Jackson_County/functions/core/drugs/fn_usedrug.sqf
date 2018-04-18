params["_type","_amount"];

_unhealth = client_unhealthiness / 50;


_amount = _amount - _unhealth;


if(_type == "marijuana") then {
	client_marijuana = _amount;
	player setCustomAimCoef 0;
	["set",0] call Client_Fnc_DoHealth;
	["Du fühlst dich richtig Chillig und Toll, eventuell ein Stück Schokolade?",false] spawn domsg;
};

if(_type == "cocaine") then {
	client_cocaine = _amount;
	player setAnimSpeedCoef 1.2;
	["Du fühlst dich wie Usain Bolt.",false] spawn domsg;
};

if(_type == "heroin") then {
	client_heroin = _amount;
	player setUnitRecoilCoefficient 0.5;
	["Du kannst nun besser Zielen.",false] spawn domsg;
};


if(_type == "meth") then {
	client_meth = _amount;
	["Du fühlst dich Unsichtbar, vielleicht bist du es ja auch?",false] spawn domsg;
	//notazepls
};

if(_type == "energy") then {
	client_energy = _amount;
	player enablefatigue false;
	player enablestamina false;
	["Du fühlst dich leichter!",false] spawn domsg;
};
["Add","unhealthiness",5] call client_fnc_sustain;

[format ["%1 wirkt für %2m und fickt dein/e %3",_type, (_amount * 5), client_unhealthiness],false] spawn domsg;


/*

	if(client_meth > 14) then { _damage = _damage / 1.1; };
	if(client_meth > 10) then { _damage = _damage / 1.1; };
	if(client_meth > 7) then { _damage = _damage / 1.1; };
	if(client_meth > 4) then { _damage = _damage / 1.1; };
	if(client_meth > 0) then { _damage = _damage / 1.1; };

*/