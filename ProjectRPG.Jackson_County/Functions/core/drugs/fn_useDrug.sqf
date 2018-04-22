params["_type","_amount"];

_unhealth = client_unhealthiness / 50;


_amount = _amount - _unhealth;


if(_type == "marijuana") then {
	client_marijuana = _amount;
	player setCustomAimCoef 0;
	["set",0] call Client_Fnc_DoHealth;
	["Der Zeug faengt an zu wirken.",false] spawn domsg;
	["Remove","Karma",20] call client_fnc_sustain;
};

if(_type == "cocaine") then {
	client_cocaine = _amount;
	player setAnimSpeedCoef 1.2;
	["Du hast das Gefühl, dass du einen Marathon laufen könntest.",false] spawn domsg;
	["Remove","Karma",20] call client_fnc_sustain;
};

if(_type == "heroin") then {
	client_heroin = _amount;
	player setUnitRecoilCoefficient 0.5;
	["Das Zielen scheint jetzt viel einfacher.",false] spawn domsg;
	["Remove","Karma",20] call client_fnc_sustain;
};


if(_type == "meth") then {
	client_meth = _amount;
	["Du fühlst dich unzerstörbar.",false] spawn domsg;
	["Remove","Karma",20] call client_fnc_sustain;
	//notazepls
};

if(_type == "energy") then {
	client_energy = _amount;
	player enablefatigue false;
	player enablestamina false;
	["Du fühlst dich sehr leicht.",false] spawn domsg;
	["Remove","Karma",20] call client_fnc_sustain;
};
["Add","unhealthiness",5] call client_fnc_sustain;

[format ["%1 will last %2m due to unhealthiness of %3",_type, (_amount * 5), client_unhealthiness],false] spawn domsg;


/*

	if(client_meth > 14) then { _damage = _damage / 1.1; };
	if(client_meth > 10) then { _damage = _damage / 1.1; };
	if(client_meth > 7) then { _damage = _damage / 1.1; };
	if(client_meth > 4) then { _damage = _damage / 1.1; };
	if(client_meth > 0) then { _damage = _damage / 1.1; };

*/