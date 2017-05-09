/*
	fn_onPlayerKilled.sqf
*/

disableSerialization;

if(deadplayer) exitwith {};
deadPlayer = true;

if(vehicle player == player) then {
	player playmove "deadstate";
};

if(vehicle player != player) then {
	player playmove "KIA_commander_MRAP_03";
};

im_dead = true;
params [["_unit", objNull, [objNull]], ["_killer", objNull, [objNull]], ["_length", 0, [0]], ["_headshot", 0, [0]]];

player setVariable ["tf_voiceVolume", 0, true];

_length = 15 - _length;
_length = round(_length);
if(_length > 11) then { _length = 11; };
if(_length < 5) then { _length = 5; };
client_respawn_timer = _length;

_unit setVariable["dead",true,true];

_playerkill = false;
_killdistance = round ((_unit distance _killer) * 10) / 10;
_killweapon = (configfile >> "CfgWeapons" >> currentWeapon _killer >> "displayName") call BIS_fnc_getCfgData;
_fuck = name _killer;
_you = name _unit;



if(_fuck != _you) then {
	if(_fuck find "Error: " > -1) then {
		[getpos player, "News", "Vehicle Accident"] remoteexec ["server_fnc_giveTask",2];

		[format["%1 is severely hurt!", _you], false] spawn domsg; 
		shooting_death = false;
	} else {
		[getpos player, "News", "Shooting"] remoteexec ["server_fnc_giveTask",2];
		if(_headshot == 1) then { [format["%1 headshot %2 at a distance of %3 with weapon: %4.", _fuck, _you, _killdistance, _killweapon], false] spawn domsg;  } else { [format["%1 downed %2 at a distance of %3 with weapon: %4.", _fuck, _you, _killdistance, _killweapon], false] spawn domsg;  };
		client_kcCamera  = "CAMERA" camCreate (getPosATL _killer); 
		showCinemaBorder false;    
		client_kcCamera cameraEffect ["EXTERNAL", "BACK"];  
		client_kcCamera camSetTarget _killer;    
		client_kcCamera camSetRelPos [0,5,1];    
		client_kcCamera camSetFOV .85;    
		client_kcCamera camSetFocus [50,1];    
		client_kcCamera camCommit 0;
		_playerkill = true;
		shooting_death = true;
	};
} else {
	shooting_death = false;
	[getpos player, "News", "Unknown Death"] remoteexec ["server_fnc_giveTask",2];
	[format["%1 is bleeding out!", _fuck], false] spawn domsg; 
};

if(_playerkill) then { 
	sleep 7;
	client_kcCamera cameraEffect ["TERMINATE","BACK"];
	camDestroy client_kcCamera;
};


client_deathCamera  = "CAMERA" camCreate (getPosATL _unit);
showCinemaBorder FALSE;
client_deathCamera cameraEffect ["Internal","Back"];

client_deathCamera camSetTarget _unit;
client_deathCamera camSetRelPos [0,22,22];
client_deathCamera camSetFOV .5;
client_deathCamera camSetFocus [50,0];
client_deathCamera camCommit 0;



createdialog "deathscreen";
(findDisplay 7300) displaySetEventHandler ["KeyDown","if((_this select 1) == (_this select 1)) then {true}"];


_unit spawn
{
	private["_RespawnBtn","_Timer"];
	disableSerialization;
	_RespawnBtn = ((findDisplay 7300) displayCtrl 7302);
	_Timer = ((findDisplay 7300) displayCtrl 7301);
	maxTime = time + (client_respawn_timer * 60);
	_RespawnBtn ctrlEnable false;
	waitUntil {_Timer ctrlSetText format["Respawn: %1",[(maxTime - time),"MM:SS.MS"] call BIS_fnc_secondsToString]; round(maxTime - time) <= 0 OR isNull _this};
	_RespawnBtn ctrlEnable true;
	_Timer ctrlSetText "Respawn";
	if(!deadplayer) exitwith { closedialog 0; };
	if(shooting_death && round(maxTime - time) <= 0) exitwith { closeDialog 0; [] call client_fnc_startFresh; };			
};

[_unit] spawn
{
	params ["_unit"];
	while { deadPlayer } do { client_deathCamera camSetTarget _unit; client_deathCamera camSetRelPos [0,22,22]; client_deathCamera camCommit 0; uisleep 0.05; };
	sleep 1;
	player setVariable["dead",nil,true];
	client_deathCamera cameraEffect ["TERMINATE","BACK"];
	camDestroy client_deathCamera;
	imrestrained = false;
};

player setdamage 0; 

[] spawn {
	while{true} do {
		sleep 1;
		if( vehicle player == player && animationstate player != "deadstate" ) then {  player playmove "deadstate"; };
		if( vehicle player != player && animationstate player != "KIA_commander_MRAP_03" ) then { player action ["Eject", vehicle player]; player playmove "KIA_commander_MRAP_03"; };

		player setOxygenRemaining 1;

		if(!deadPlayer) exitwith {};
	};
};