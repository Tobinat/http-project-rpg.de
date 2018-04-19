_shop = currentCursorTarget;
_time = time;
if(!(typeOf _shop in shopNameList)) exitWith {};
_cops = (count currentcop);
 if(_cops < 3) exitwith { hint "Nicht genug Cops. - 3+"; };
_lastRobbed = _shop getVariable ["lastRobbed",0];
if(_time - _lastRobbed < 600) exitWith { ["Dieser Laden wurde kuerzlich ausgeraubt", false] call domsg; };
disableSerialization;

_pos = getPos _shop;
_timeLeft = 360;
_task = "Laden wird Ueberfallen";
_error = "";

if(client_robbing) exitWith {};
client_robbing = true;
21 cutRsc ["RSC_dotask","PLAIN"];
_POPTASK = uiNameSpace getVariable ["RSC_dotask",displayNull];
_POPUP = _POPTASK displayCtrl 9119;
_POPUP ctrlSetStructuredText parseText format["<img size='1' image='cg_mission_files\icons\info.paa'/> <t color='#FFCC00'><t size='0.9'>%1</t> <br/> <t size='2'>%2</t>",_task,_timeLeft];

for "_i" from 0 to 1 step 0 do {
	uisleep 1;
	_timeLeft = _timeLeft - 1;
	if(_timeLeft == 330) then { playSound3D ["sl_client\sounds\shopAlarm.ogg", _shop, false, getPosASL _shop, 5, 1, 150]; [player] remoteExec ["server_fnc_robberyCall", 2];};
	_POPUP ctrlSetStructuredText parseText format["<img size='1' image='cg_mission_files\icons\info.paa'/> <t color='#FFCC00'><t size='0.9'>%1</t> <br/> <t size='2'>%2</t>",_task,_timeLeft];
	if(_timeLeft == 0) exitwith {};
	if(DeadPlayer) exitwith { _success = false; _error = "Dead Player"; };	
	if(player distance2D _pos > 10) exitWith {_error = "Abgebrochen wegen entfernung"; };
	if(currentWeapon player == "") exitWith { _error = "Abgebrochen wegen nicht gezogener Waffe"; };
};
_POPUP ctrlSetStructuredText parseText format["<img size='1' image='cg_mission_files\icons\info.paa'/> <t color='#FFCC00'><t size='0.9'>%1</t> <br/> <t size='1'>%2</t>",_task,_error];
sleep 1;
player say "slideout";
_POPUP ctrlSetStructuredText parseText format["",_task,_timeLeft];

if(_error == "") then {

	_suitCases = ["kif_5k","kif_5k","kif_5k","kif_10k"];
	_item = _suitCases call BIS_fnc_selectRandom;
	player addItem _item;

	[format["Du hast den Laden erfolgreich Ueberfallen, deine Beute: $%1", _amount], false] call domsg;
	["Remove","Karma",50] call client_fnc_sustain;
	[player,objNull,19,format ["%1 hat den Laden Ueberfallen. %2 wurden gestohlen.", name player, _amount],_amount] remoteExec ["server_fnc_actionLog", 2];
	_shop setVariable ["lastRobbed", time, true];
};
client_robbing = false;