//init_player_test = 0;
if(!hasInterface) exitWith {}; //This is a headless client, he doesn't need to do anything but keep being headless..
Np_ProfileVars = profilenamespace getvariable "Nopix_Profile";
if(isnil "Np_ProfileVars") then {
	profilenamespace setvariable ["Nopix_Profile",[[["Willkommen in Silverlake ","Willkommen", "Verizon"]],[["Willkommen","Willkommen in Silverlake", "Post"]]]];
};
//Tanken leerlutschen
{ _x setFuelCargo 0; } forEach (nearestObjects [[6728.31,5269.87,0.56609], ["Land_fs_feed_F"], 20000]);

//Banktüren schließen & verriegeln
{
	_x animate ['Vault_Door',0];
	_x animate ['door_5',0];
 } forEach (nearestObjects [[6728.31,5269.87,0.56609], ["Land_CommonwealthBank"], 20000]);

[] spawn client_fnc_setGuiColor;

waitUntil {sleep 0.05; !(isNil {player}) && player == player && alive player};


[] call Client_fnc_miscVariables;
player allowdamage false;
[player] remoteexec ["Server_fnc_initStats",2];
waituntil {(player getvariable "loaded") == 1};
player allowdamage true;
[] call client_fnc_initInteractions;
[] spawn client_fnc_escInterupt;
waituntil {(player getvariable "loaded") == 2};


[] call client_fnc_karmaPhoneInit;

player setVariable["loaded", nil, false];


waitUntil {!(isNull (findDisplay 46))};

//Disable Respawn Button
/*waitUntil {!(isNull (findDisplay 49))};
((findDisplay 49) displayCtrl 1010) ctrlEnable false;*/

_vehicle = "ivory_wrx" createvehiclelocal getpos player;
[_vehicle, ["black","matte"], "black", 1, 1] call client_fnc_IvoryInitVehicle;
[_vehicle, "FuckYou", "ivory"] call client_fnc_numberPlate;

uisleep 0.05;
deletevehicle _vehicle;

// if(myhealth > 0.99) exitwith {
	// ["Du wurdest aufgrund von Combat Logging getötet.", true] spawn domsg;
	// [player,objNull,3,format ["%1 wurde wegen CombatLogging getötet", name player],"", ""] remoteExec ["server_fnc_deathLog", 2];
	// diag_log format["Töte %1 für Battlelog", player];
	//["Remove",1] call client_fnc_doHealth;
	// _respawn = player getVariable "respawn";
	// if (_respawn == 0) then {
		// [] spawn client_fnc_respawnTimer;
	// };
// };

cutText ["", "BLACK"];

(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call client_fnc_HandleKeys"];
(findDisplay 46) displayAddEventHandler ["KeyUp", "_this call client_fnc_HandleKeysUp"];

player addEventHandler["InventoryOpened", {_this call client_fnc_inventoryOpened;}];
player addEventHandler["InventoryClosed", {_this call client_fnc_inventoryClosed;}];
["ace_arsenal_displayOpened", {
	if !( myjob in ["EMS","Cop"] ) then {
		_this select 0 closedisplay 1;
		["Du hast hier keinen Zugriff!",true] spawn domsg;
	};
}] call CBA_fnc_addEventHandler;
//player addEventHandler["ContainerClosed", {_this call client_fnc_inventoryClosed;}];
[ missionNamespace, "arsenalOpened", {
    disableSerialization;
    _display = _this select 0;
    {
        ( _display displayCtrl _x ) ctrlSetText "Disabled";
        ( _display displayCtrl _x ) ctrlSetTextColor [ 1, 0, 0, 0.5 ];
        ( _display displayCtrl _x ) ctrlRemoveAllEventHandlers "buttonclick";
		( _display displayCtrl _x ) ctrlEnable false;
    }forEach [ 44150, 44146, 44147 ];
	_display displayAddEventHandler ["KeyDown", "if ((_this select 1) in [19,29,24]) then {true}"];
} ] call BIS_fnc_addScriptedEventHandler;

[Client_fnc_HudEffects, 3] execFSM "call.fsm";
[Client_fnc_Survival, 300] execFSM "call.fsm";

if(uniform player == "" && female) then {
	player forceadduniform "vvv_character_protibanador";
};
/* player setdamage myHealth; */
client_seatwarn = false;
client_seatbelt = false;
[] spawn client_fnc_seatbelts;
[] spawn client_fnc_gunholster;
[] spawn client_fnc_checkRadio;
//[] spawn client_fnc_forceFirstPerson;
[] spawn client_fnc_speedMeters;
//_respawn = player getVariable "respawn";
//if (_respawn == 0) then {
//		[] spawn client_fnc_respawnTimer;
//};
if(im_dead) exitWith {};
437 cutRsc ["HUDLoading","PLAIN"];

sleep 5;
420 cutRsc ["playerHUD","PLAIN"];
cutText ["","BLACK IN", 10];

sleep 2;
437 cutfadeout 1;

[] call client_fnc_initWelcome;
[] call client_fnc_checktaskforce;
["Windowstaste oder Use Action 10 öffnet das Interaktionsmenü.", true] spawn domsg;
driver_test = false;