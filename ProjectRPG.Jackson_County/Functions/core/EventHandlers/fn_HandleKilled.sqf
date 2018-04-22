/*
	fn_onPlayerKilled.sqf
*/

disableSerialization;

if(deadplayer) exitwith {};
if (client_godmode) exitwith { false };
deadPlayer = true;

[] spawn KK_fnc_forceRagdoll;

if(vehicle player == player) then {
	player playmove "deadstate";
};

/*if(vehicle player != player) then {
	[] spawn KK_fnc_forceRagdoll;
	uisleep 3;
	player playmove "KIA_commander_MRAP_03";
};*/

im_dead = true;
params [["_unit", objNull, [objNull]], ["_killer", objNull, [objNull]], ["_length", 0, [0]], ["_headshot", 0, [0]]];

player setVariable ["tf_voiceVolume", 0, true];

/*
_length = 20 - _length;
_length = round(_length);
if(_length > 11) then { _length = 15; };
if(_length < 5) then { _length = 8; };
client_respawn_timer = _length;
*/
_length = 1;
client_respawn_timer = _length;

_unit setVariable["dead",true,true];

_playerkill = false;
_killdistance = round ((_unit distance _killer) * 10) / 10;
_killweapon = (configfile >> "CfgWeapons" >> currentWeapon _killer >> "displayName") call BIS_fnc_getCfgData;
_fuck = name _killer;
_you = name _unit;


if(_fuck != _you) then {
	if(_fuck find "Error: " > -1) then {
		[getpos player, "Nachrichten", "VU"] remoteexec ["server_fnc_giveTask",2];

		[format["%1 ist schwer verletzt!", _you], false] spawn domsg;
		shooting_death = false;
		[_killer, player, "vehicleKill"] spawn client_fnc_createEvidence;
	} else {
		[getpos player, "Nachrichten", "Schießerrei"] remoteexec ["server_fnc_giveTask",2];
		if(_headshot == 1) then { [format["%1 schoss %2 aus einer Distanz von %3 Metern mit einer %4 in den Kopf.", _fuck, _you, _killdistance, _killweapon], false] spawn domsg;  } else { [format["%1 erschoss %2 aus einer Distanz von %3 Metern mit einer %4.", _fuck, _you, _killdistance, _killweapon], false] spawn domsg;  };
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
		[_killer, player, "killAtempt"] spawn client_fnc_createEvidence;
	};
	[player,_killer,1,format ["%1 tötete %2 aus der Distanz von %3 Metern mit einer %4",_fuck, name player, _killdistance, _killweapon],_killweapon, _killdistance] remoteExec ["server_fnc_deathLog", 2];
} else {
	shooting_death = false;
	[getpos player, "Nachrichten", "Unbekannter Todesgrund"] remoteexec ["server_fnc_giveTask",2];
	[format["%1 ist verstorben!", _fuck], false] spawn domsg;
	[player,objNull,2,format ["%1 starb",name player],"",""] remoteExec ["server_fnc_deathLog", 2];
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
	maxTime = time + (client_respawn_timer * 5);
	_RespawnBtn ctrlEnable false;
	waitUntil {_Timer ctrlSetText format["Respawn: %1",[(maxTime - time),"MM:SS.MS"] call BIS_fnc_secondsToString]; round(maxTime - time) <= 0 OR isNull _this};
	_respawn = player getVariable "respawn";
	/*
	if (_respawn > 0) then
	{
		_RespawnBtn ctrlEnable true;
		_Timer ctrlSetText "Respawn";
	};
	if (_respawn == 0) then
	{
		_Timer ctrlSetText "Du bist Bewustlos! Wenn dir die Mediziner nicht interhalb 15 Minuten helfen stirbst du!";
		[] spawn client_fnc_respawnTimer;
	};
	*/
	if(!deadplayer) exitwith { closedialog 0; };
	//if(shooting_death && round(maxTime - time) <= 0) exitwith { closeDialog 0; [] call client_fnc_startFresh; };
};

[_unit] spawn
{
	params ["_unit"];
	while { deadPlayer } do { client_deathCamera camSetTarget _unit; client_deathCamera camSetRelPos [0,22,22]; client_deathCamera camCommit 0; uisleep 0.05; };
	sleep 1;
	player setVariable["dead",nil,true];
	client_deathCamera cameraEffect ["TERMINATE","BACK"];
	camDestroy client_deathCamera;
	//imrestrained = false;
};

player setdamage 0;

[] spawn {
	for "_i" from 0 to 1 step 0 do {
		sleep 1;
		if( vehicle player == player && animationstate player != "deadstate" ) then {  player playmovenow "deadstate"; };
		//if( vehicle player != player && animationstate player != "KIA_commander_MRAP_03" ) then { player action ["Eject", vehicle player]; player playmove "KIA_commander_MRAP_03"; };

		player setOxygenRemaining 1;

		if(!deadPlayer) exitwith {};
	};
};
