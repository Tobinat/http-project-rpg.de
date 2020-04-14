if (count currentCop < 3) exitWith {["Nix da!","Es müssen mehr Polizisten im Dienst sein.",[255,0,0,1],"Mindestens 3 Polizisten!"] call Client_fnc_showNotification;};
if(isNil "jailHacking") then { jailHacking = false; };
if(jailHacking) exitwith {};
jailHacking = true;

21 cutRsc ["RSC_dotask","PLAIN"];
_POPTASK = uiNameSpace getVariable ["RSC_dotask",displayNull];
_POPUP = _POPTASK displayCtrl 9119;

if(typeof cursorobject IN ["Land_GateB","Land_MainSection","Land_Gaol_Main", "Land_buildingsJailCellBlock1"]) then {
	_fencetoopen = cursorobject;
	["MiMiMi.exe wird gestartet. Firewall wird gehackt.", false] spawn domsg;
	playSound3D ["CG_Jobs\sounds\jailbreak\hacking.ogg", player, false, (getposasl player), 1, 1, 25];
	_calcT = 0;
	player playmove "vvv_anim_lockpick";
	for "_i" from 0 to 1 step 0 do  {
		if(animationstate player != "vvv_anim_lockpick") then { player playmove "vvv_anim_lockpick"; };
		_calcT = _calcT + 1;
		if(_calcT > 25) exitwith {};
		uisleep 1;
		_timeleft = 25 - _calcT;
		_POPUP ctrlSetStructuredText parseText format["<img size='1' image='prpg_data\icons\info.paa'/> <t color='#FFCC00'><t size='0.9'>Sicherheitsmassnahmen werden umgeschrieben.</t> <br/> <t size='2'>%1</t>",_timeleft];
	};
	playSound3D ["CG_Jobs\sounds\jailbreak\hacking.ogg", player, false, (getposasl player), 3, 1, 55];

	if(typeOf _fenceToOpen == "Land_GateB") then {
		["Daten werden verarbeitet. Du hast vollen zugriff.", false] spawn domsg;
		_fenceToOpen animate ['GateDoor_3',-1.6];
	};

	if(typeOf _fenceToOpen == "Land_Gaol_Main") then {

		["Die Module der Türen werden gehackt. Du hast vollen Zugang.", false] spawn domsg;
		_doors = ["door_1","door_2","door_3","door_4","door_5","door_6","door_7","door_8","door_9","door_10","door_11","door_12","door_13","door_14","door_15","door_16","door_17","door_18","door_19","door_20","door_21","door_22","door_23","door_24"];
		{
			_fencetoopen animate [_x,1];
		} foreach _doors;

	};


	if(typeOf _fenceToOpen == "Land_MainSection") then {

		playSound3D ["CG_Jobs\sounds\jailbreak\jailAlarm.ogg", _fenceToOpen, false, (getposasl _fenceToOpen), 1.7, 1, 10235];
		["Die Module der Türen werden gehackt. Du hast vollen Zugang.", false] spawn domsg;
		_doors = ["S1","S2","S3","S4","S5","S6","S7","door1","door2","door3","door4","door5","door6","door7","door8","door9","door10","door11","door12","door13","door14"];
		{
			_fencetoopen animate [_x,1];
		} foreach _doors;

	};
	if(typeOf _fenceToOpen == "Land_buildingsJailCellBlock1") then {

		playSound3D ["CG_Jobs\sounds\jailbreak\jailAlarm.ogg", _fenceToOpen, false, (getposasl _fenceToOpen), 1.7, 1, 10235];
		["Die Module der Zellen werden gehackt. Du hast vollen Zugang.", false] spawn domsg;
		_doors2 = ["doorcell0","doorcell00","doorcell4","doorcell1","doorcell2","doorcell3"];
		_doors = ["door1","door2","door3","door4"];
		{ _fencetoopen animate [_x,1]; } forEach _doors;
		{ _fencetoopen animate [_x,0]; } forEach _doors2;
		["911: Hinweis!!! Die Türen eines Zellenblocks wurde gehackt.", false] remoteExec ["domsg", currentCop];

	};
	[player, _door, "hackDoor"] spawn client_fnc_createEvidence;
};

if (typeOf cursorObject IN["Land_CommonwealthBank"]) then {
	_bank = cursorobject;
	["MiMiMi.exe wird gestartet. Firewall wird gehackt.", false] spawn domsg;
	playSound3D ["CG_Jobs\sounds\jailbreak\hacking.ogg", player, false, (getposasl player), 1, 1, 25];
	_calcT = 0;
	player playmove "vvv_anim_lockpick";
	for "_i" from 0 to 1 step 0 do  {
		if(animationstate player != "vvv_anim_lockpick") then { player playmove "vvv_anim_lockpick"; };
		_calcT = _calcT + 1;
		if(_calcT > 45) exitwith {};
		uisleep 1;
		_timeleft = 25 - _calcT;
		_POPUP ctrlSetStructuredText parseText format["<img size='1' image='prpg_data\icons\info.paa'/> <t color='#FFCC00'><t size='0.9'>Sicherheitsmassnahmen werden umgeschrieben.</t> <br/> <t size='2'>%1</t>",_timeleft];
	};
	playSound3D ["CG_Jobs\sounds\jailbreak\hacking.ogg", player, false, (getposasl player), 3, 1, 55];
	["Daten werden verarbeitet. Firewall wird neugeschrieben.", false] spawn domsg;
	_bank animate ['Vault_Door',1];
	_bank animate ['door_5',1];

};
jailHacking = false;
