/*
	File: fn_revived.sqf
	
	
	Description:
	THANK YOU JESUS I WAS SAVED!
*/
private["_medic","_dir"];


_medic = param [0,"Unknown Medic",[""]];
_status = param [1,"Normal",[""]];

if(_status == "CPR" && shooting_death) then { hint "Ein Spieler versucht dich zu stabilisieren."; maxTime = maxTime + 60; } else {


	player setVariable["dead",nil,TRUE];
	player setVariable["mapVisible",nil,true];
	player setVariable["playerHealth", 0.2, true];
	player setVariable["Revive",TRUE,TRUE];

	deadPlayer = false;

	[format[localize "STR_Medic_RevivePay",_medic,[(call life_revive_fee)] call life_fnc_numberText], false] spawn domsg;

	while{true} do {
		if(dialog) then {closeDialog 0;};
		if(!dialog) exitwith {};
	};

	player setVariable ["tf_unable_to_use_radio", false];
	im_dead = false;
	["Set",0.2] call fnc_doHealth;

	//Take fee for services.
	if(cash_in_bank > (call life_revive_fee)) then {
		["bank","take",call life_revive_fee] call life_fnc_handleCash; 
	} else {
		["bank","set",0] call life_fnc_handleCash;
	};
	player setVariable["Revive",nil,TRUE];
	player setVariable["name",nil,TRUE];
	player setVariable ["tf_voiceVolume", 1, true];
	disableUserInput false;
	player allowDamage true;
	life_action_inUse = false;
	life_death = 2;

	player setVariable["Reviving",nil,TRUE];
	player setVariable["CPR",nil,TRUE];
	player setVariable["EMSON", nil, true];

	[3] call SOCK_fnc_updatePartial;
	[6] call SOCK_fnc_updatePartial;

	_koildeb = player getVariable ["bleedingon", 1];
	if(_koildeb == 1) then {
		_chance = round (random 10000);
		if(_chance > 8696) then {
			player setVariable ["bleedingon",(round (random 5)),true];
		};
	};

	_koildebi = player getVariable ["woundedon", 1];
	if(_koildebi == 1) then {
		_chance = round (random 10000);
		if(_chance > 7996) then {
			player setVariable ["woundedon",(round (random 5)),true];
		};
	};

	_koildebii = player getVariable ["fractureon", 1];
	if(_koildebii == 1) then {
		_chance = round (random 10000);
		if(_chance > 6996) then {
			player setVariable ["fractureon",(round (random 7)),true];
		};
	};

	_koildebiii = player getVariable ["unconciouson", 1];
	if(_koildebiii == 1) then {
		_chance = round (random 10000);
		if(_chance > 6996) then {
			player setVariable ["unconciouson",(round (random 7)),true];
		};
	};



	//add freeze script on revive

	disableUserInput true;
	life_action_inUse = true;
	[player,"AinjPpneMstpSnonWnonDnon"] remoteExecCall ["life_fnc_animSync"];
	_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL player);
	_obj setPosATL (getPosATL player);
	player attachTo [_obj,[0,0,0]];
	uiSleep 15;
	player allowdamage true;
	detach player;
	deleteVehicle _obj;
	disableUserInput false;

	[player,"AmovPercMstpSnonWnonDnon"] remoteExecCall ["life_fnc_animSync"];
	life_action_inuse = false; 
	shooting_death = false;
	life_deathCamera cameraEffect ["TERMINATE","BACK"];
	camDestroy life_deathCamera;

};