if(typeof cursortarget != "plp_ct_HighSecMediumBlack") exitwith { hint "You must use this on a high security black box"; };

if(bankrobber != 1) exitwith { hint "Already in progress or robbed too recently"; };

_thebankcontainer = cursortarget;

_thedrill = "itemsvaultdrill1" createvehicle getpos player;

_thedrill attachTo [_thebankcontainer, [0, -0.9, 0] ];

player removeitem "NP_drillitem";

bankrobber = 3;

while {true} do {

	_location = getposatl _thebankcontainer;
	_PS = "#particlesource" createVehicleLocal _location;  

	_PS setParticleRandom [0,[0.004,0.004,0.004],[0.01,0.01,0.01],30,0.01,[0,0,0,0],1,0.02,360];

	_PS setDropInterval 0.001;

	_PS setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal.p3d",16,12,8],"","BillBoard",1,3,[0,0,0],[0, 0, 1],0,1.5,1,0.1,[0.02,0.02,0.1],[[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0]],[1],1,0,"","",_PS,0,true,0.1,[[0.8,0.7,0.2,0]]] ;

	_PS attachTo [_thedrill,[0,0.525,0.22]];

	_pick = random (round 100);

	if(_pick < 20) then {

		bankrobber = 2;

		while{bankrobber == 2} do {

			deletevehicle _ps;
			playSound3D ["cg_mission_files\sounds\npdrillfailing.ogg", player, false, getPosAtL _thedrill, 1, 1, 45];
			uisleep 12;
			hint "The drill is stuck";
			uisleep 3;
		};

	};

	if(_pick > 19 && _pick < 61) then {

		playSound3D ["cg_mission_files\sounds\npdrill2.ogg", player, false, getPosAtL _thedrill, 1, 1, 45];
		uisleep 20;
		deletevehicle _ps;

	};

	if(_pick > 60 && _pick < 93) then {

		playSound3D ["cg_mission_files\sounds\npdrill1.ogg", player, false, getPosAtL _thedrill, 1, 1, 45];
		uisleep 14;
		deletevehicle _ps;
	};

	if(_pick > 92) exitwith { deletevehicle _ps; };

	uisleep 3;
};

hint "You robbed the bank - interact with the box now!";
bankrobber = 4;
uisleep 600;

deletevehicle _thedrill;
deletevehicle _thebankcontainer;