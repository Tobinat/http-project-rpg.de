/*
	File: fn_escInterupt.sqf


	Description:
	Monitors when the ESC menu is pulled up and blocks off
	certain controls when conditions meet.
*/
private["_abortButton","_respawnButton","_fieldManual","_escSync","_canUseControls","_btnT2","_btnT1","_btnT3"];
disableSerialization;

_escSync = {
	private["_abortButton","_thread","_syncManager"];
	disableSerialization;

	_syncManager = {
		disableSerialization;
		private["_abortButton","_timeStamp"];
		_abortButton = (findDisplay 49) displayCtrl 104;
		_timeStamp = time + 10;

		waitUntil {
			_abortButton ctrlSetText format["Ausloggen in %1",round(_timeStamp - time)];
			_abortButton ctrlCommit 0;
			round(_timeStamp - time) <= 0 || isNull (findDisplay 49)
		};

		_abortButton ctrlSetText "Ausloggen!";
		_abortButton ctrlCommit 0;
	};

	_abortButton = (findDisplay 49) displayCtrl 104;
	 call life_fnc_saveGear;

	if(_this) then {
		_thread = [] spawn _syncManager;
		waitUntil{scriptDone _thread OR isNull (findDisplay 49)};
		_abortButton ctrlEnable true;
	};
};

_canUseControls = {
	if(playerSide == west) exitWith {true};
	if((player getVariable["restrained",FALSE]) OR (player getVariable["Escorting",FALSE]) OR (player getVariable["transporting",FALSE]) OR (life_is_arrested) OR (life_istazed)) then {false} else {true};
};

while {true} do
{
	waitUntil{!isNull (findDisplay 49)};
	_abortButton = (findDisplay 49) displayCtrl 104;
	_abortButton buttonSetAction "[player] remoteExec [""TON_fnc_cleanupRequest"",2]; [8] call SOCK_fnc_updatePartial;";
	_respawnButton = (findDisplay 49) displayCtrl 1010;
	_fieldManual = (findDisplay 49) displayCtrl 122;

	//Block off our buttons first.
	_abortButton ctrlEnable false;
	_respawnButton ctrlEnable false; //Deaktiviert lassen, weil #RolePlayBlocker
	_fieldManual ctrlEnable false; //Never re-enable, blocks an old script executor.

	//Button Beschriftungen
	_btnT1 = (findDisplay 49) displayCtrl 2;
	_btnT1 ctrlEnable false;
	_btnT1 ctrlSetText "PROJECT-RPG";

	_btnT2 = (findDisplay 49) displayCtrl 103;
	_btnT2 ctrlEnable false;
	_btnT2 ctrlSetText (getPlayerUID player);

	_btnT3 = (findDisplay 49) displayCtrl 523;
	_btnT3 ctrlSetText "PRPG.de";

	_usebleCtrl = call _canUseControls;
	_usebleCtrl spawn _escSync;

	waitUntil{isNull (findDisplay 49)};
};
