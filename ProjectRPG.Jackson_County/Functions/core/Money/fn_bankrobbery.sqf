if(typeof cursortarget != "plp_ct_HighSecMediumBlack") exitwith { hint "Musisz tego uzyc na czarnej skrzyni"; };
if(bankrobber != 1) exitwith { hint "W toku, lub niedawno obrabowane"; };
[] spawn {
	_bank = nearestObject [player, "Land_CommonwealthBank"];
	uiSleep 30;
	playSound3D ["sl_client\sounds\bankAlarm.ogg", _bank, false, getPosASL _bank, 2, 1, 150]; 
	[player] remoteExec ["server_fnc_robberyCallBank",2];
};
_thebankcontainer = cursortarget;
theDrill = "itemsvaultdrill1" createvehicle getpos player;
theDrill attachTo [_thebankcontainer, [0, -0.9, 0] ];
player removeitem "NP_drillitem";

[player, theDrill, "bankDrill"] spawn client_fnc_createEvidence;
[player, _theBankContainer, "vaultBreach"] spawn client_fnc_createEvidence;

	["Remove","Karma",100] call client_fnc_sustain;


bankrobber = 3;

for "_i" from 0 to 1 step 0 do  {
	if(isNull theDrill) exitWith { bankrobber = 1; };
	_location = getposatl _thebankcontainer;
	_PS = "#particlesource" createVehicleLocal _location;  

	_PS setParticleRandom [0,[0.004,0.004,0.004],[0.01,0.01,0.01],30,0.01,[0,0,0,0],1,0.02,360];

	_PS setDropInterval 0.001;

	_PS setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal.p3d",16,12,8],"","BillBoard",1,3,[0,0,0],[0, 0, 1],0,1.5,1,0.1,[0.02,0.02,0.1],[[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0]],[1],1,0,"","",_PS,0,true,0.1,[[0.8,0.7,0.2,0]]] ;

	_PS attachTo [theDrill,[0,0.525,0.22]];

	_pick = random (round 100);

	if(_pick < 20) then {

		bankrobber = 2;

		while{bankrobber == 2} do {

			deletevehicle _ps;
			playSound3D ["cg_mission_files\sounds\npdrillfailing.ogg", player, false, getPosAtL theDrill, 1, 1, 45];
			uisleep 12;
			hint "Wiertlo utknelo";
			uisleep 3;
		};

	};

	if(_pick > 19 && _pick < 61) then {

		playSound3D ["cg_mission_files\sounds\npdrill2.ogg", player, false, getPosAtL theDrill, 1, 1, 45];
		uisleep 20;
		deletevehicle _ps;

	};

	if(_pick > 60 && _pick < 93) then {

		playSound3D ["cg_mission_files\sounds\npdrill1.ogg", player, false, getPosAtL theDrill, 1, 1, 45];
		uisleep 14;
		deletevehicle _ps;
	};

	if(_pick > 92) exitwith { deletevehicle _ps; };

	uisleep 3;
};
if(bankrobber != 1) then {
	hint "Obrabowales bank - sprawdz skrzynie!";
	bankrobber = 4;
	uisleep 300;
	deletevehicle _thebankcontainer;
	deletevehicle theDrill;
	uisleep 1500;
	bankrobber = 1;
};