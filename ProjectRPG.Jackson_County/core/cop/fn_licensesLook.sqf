/*
	File: fn_licenseslook.sqf
	Author: Not Tonic
	License Look
	Licenses Look
	Description:
	Outprints the licenses.
*/
disableSerialization;
_ui = uiNameSpace getVariable ["playerHUD",displayNull];
if(isNull _ui) exitWith
{
	[] call life_fnc_hudSetup;
	_ui = uiNameSpace getVariable ["playerHUD",displayNull];
};

_civ = param [0,ObjNull,[ObjNull]];
if(side _civ != civilian && side _civ != east) exitwith { ["Es muss sich um einen Zivilisten handeln!", false] spawn domsg; };
0 cutRsc ["RSC_ID_BG","PLAIN"];
_id_name = _ui displayCtrl 44446;
_id_faction = _ui displayCtrl 44447;
_id_uid = _ui displayCtrl 44448;
_id_city = _ui displayCtrl 44449;
_id_houses = _ui displayCtrl 44450;
_id_licenses  = _ui displayCtrl 44451;
skip_all = false;

if(side player == west) then {
	player remoteExec ["fnc_pull_ID",_civ];
	life_gather_info = false;
	["Überprüfe Informationen - Bitte warten!", false] spawn domsg; 
	waituntil {life_gather_info};
};

if(!skip_all) then {
	_message = name _civ;
	_id_name ctrlSetStructuredText parseText format["<img size='0.5' image='id_icons\name.paa'/> Name:<t color='#C80000'> %1 </t>",_message];

	if(side _civ == independent) then {_message = "EMS Department"};
	if(side _civ == west) then  {_message = "Police Officer"};
	if(side _civ == civilian) then {_message = "Civilian"};
	if(side _civ == east) then {_message = "Civilian"};	
	_id_faction ctrlSetStructuredText parseText format["<img size='0.5' image='id_icons\faction.paa'/> Info:<t color='#C80000'> %1 </t>",_message];

	_message = getPlayerUID _civ;
	_id_uid ctrlSetStructuredText parseText format["<img size='0.5' image='id_icons\uid.paa'/> ID#:<t color='#C80000'> %1 </t>",_message];

	_id_city ctrlSetStructuredText parseText format["<img size='0.5' image='id_icons\city.paa'/> Residence:<t color='#C80000'> Lakeside </t>",_message];

	_message = count target_houses;
	_id_houses ctrlSetStructuredText parseText format["<img size='0.5' image='id_icons\houses.paa'/> House Count:<t color='#C80000'> %1 (Shown on Map)</t>",_message];

	_message = target_licenses;
	_id_licenses ctrlSetStructuredText parseText format["<img size='0.5' image='id_icons\license.paa'/> Licenses:<t color='#C80000'> %1 </t>",_message];

	OldHead = headgear _civ;
	OldGoggles = goggles _civ;
	removeGoggles _civ;
	removeHeadGear _civ;

	life_IDCamera  = "CAMERA" camCreate (getPosATL _civ); 
	showCinemaBorder true;    
	life_IDCamera cameraEffect ["EXTERNAL", "BACK"];      
	life_IDCamera camSetTarget _civ;    
	life_IDCamera camSetRelPos [0,1,1];    
	life_IDCamera camSetFOV .85;    
	life_IDCamera camSetFocus [50,1];    
	life_IDCamera camCommit 0;

	sleep 12;	
	_message = "";
	_id_name ctrlSetStructuredText parseText format["%1",_message];
	_id_faction ctrlSetStructuredText parseText format["%1",_message];
	_id_uid ctrlSetStructuredText parseText format["%1",_message];
	_id_city ctrlSetStructuredText parseText format["%1",_message];
	_id_houses ctrlSetStructuredText parseText format["%1",_message];
	_id_licenses ctrlSetStructuredText parseText format["%1",_message];
	life_IDCamera cameraEffect ["TERMINATE","BACK"];
	camDestroy life_IDCamera;

	if (!isNil "OldHead") then 
	{
		_civ addheadgear OldHead;
	};

	if (!isNil "OldGoggles") then 
	{
		_civ addgoggles OldGoggles;
	};
} else {

	["Überprüfung fehlgeschlagen!", false] spawn domsg;
};
"colorCorrections" ppEffectEnable false;	
[] spawn {
	//fail safe
	uisleep 14;
	if(!life_gather_info) then {
		"colorCorrections" ppEffectEnable false;	
		life_gather_info = true;
	};
};
