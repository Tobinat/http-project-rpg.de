if(isNil "jailHacking") then { jailHacking = false; };
if(jailHacking) exitwith {};
jailHacking = true;


if(typeof cursorobject IN ["Land_GateB","Land_MainSection","Land_Gaol_Main"]) then { ;
_fencetoopen = cursorobject;
	hint parsetext "<img size='1' image='CG_Jobs\icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>STARTING HACK SEQUENCE</t><br/> ACCESS POINT BEING BREACHED.";

	playSound3D ["CG_Jobs\sounds\jailbreak\hacking.ogg", player, false, (getposasl player), 1, 1, 25];
	_calcT = 0;
	player playmove "vvv_anim_lockpick";
	while {true} do {
		if(animationstate player != "vvv_anim_lockpick") then { player playmove "vvv_anim_lockpick"; };
		_calcT = _calcT + 1;
		if(_calcT > 25) exitwith {};
		uisleep 1;
		hint parsetext format["<img size='1' image='CG_Jobs\icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>MODIFYING SECURITY CELL</t><br/> %1 of 25 seconds.",_calcT];
	};
	playSound3D ["CG_Jobs\sounds\jailbreak\hacking.ogg", player, false, (getposasl player), 3, 1, 55];
	
	if(typeOf _fenceToOpen == "Land_GateB") then {
		hint parsetext format["<img size='1' image='CG_Jobs\icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>DATA MODIFIED</t><br/> ACCESS POINT BREACHED.",_calcT];
		_fenceToOpen animate ['GateDoor_3',-1.6];
	};

	if(typeOf _fenceToOpen == "Land_Gaol_Main") then {

		hint parsetext format["<img size='1' image='CG_Jobs\icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>SECONDARY MODULE HACKED</t><br/> FULL ACCESS GRANTED.",_calcT];

		_doors = ["door_1","door_2","door_3","door_4","door_5","door_6","door_7","door_8","door_9","door_10","door_11","door_12","door_13","door_14","door_15","door_16","door_17","door_18","door_19","door_20","door_21","door_22","door_23","door_24"];
		{
			_fencetoopen animate [_x,1];
		} foreach _doors;

	};


	if(typeOf _fenceToOpen == "Land_MainSection") then {

		playSound3D ["CG_Jobs\sounds\jailbreak\jailAlarm.ogg", _fenceToOpen, false, (getposasl _fenceToOpen), 1.7, 1, 10235];
		hint parsetext format["<img size='1' image='CG_Jobs\icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>MAIN MODULE HACKED</t><br/> FULL ACCESS GRANTED.",_calcT];

		_doors = ["S1","S2","S3","S4","S5","S6","S7","door1","door2","door3","door4","door5","door6","door7","door8","door9","door10","door11","door12","door13","door14"];
		{
			_fencetoopen animate [_x,1];
		} foreach _doors;

	};
};
jailHacking = false;




//plp_ctm_contshippinggreen