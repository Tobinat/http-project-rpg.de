if ((player distance prisondoor) < 10) then {

	private ["_copamount"];
	if ((side player) == west) exitwith {prisondoor animate ['maindoor1', 0]; prisondoor animate ['maindoor2', 0];  };
	_copamount = 0; 
	{if((side _x == west) || (_x getVariable "udcLevel"))  then {_copamount = _copamount + 1};} foreach playableUnits;
	if (_copamount < 0) exitwith {["Es müssen mindestens 5 Cops im Dienst sein, sonnst macht es doch kein Spaß!"] spawn domsg;};

	if (prisondoor getVariable "robbed") exitwith {["Das Tor ist bereits gesprengt worden."] spawn domsg;};
	if (!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {["Du hast keinen Sprengstoff dabei."] spawn domsg;};
	["dbe", false] remoteExec ["fnc_dispatch",west];
	[] call fnc_placec4;

};