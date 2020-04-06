#define __CONST__(var1,var2) var1 = compileFinal (if(typeName var2 == "STRING") then {var2} else {str(var2)}) //Quick macro for creating a constant variable
#define __GETC__(var) (call var) //Quick clean macro for getting a value of a constant / compileFinal variable. i.e if(__GETC__(numberone) == 1) then {}
#define __SUB__(var1,var2) var1 = var1 - var2

//Control Macros
#define getControl(disp,ctrl) ((findDisplay ##disp) displayCtrl ##ctrl)
#define getSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])

//Player based quick macros
#define grpPlayer group player
#define steamid getPlayerUID player

private["_ui","_units"];
#define iconID 78000


500 cutText["","PLAIN"];
if(visibleMap OR {dialog}) exitWith {
};
scale = 0.45;
_ui = uiNamespace getVariable ["client_HUD_nameTags",displayNull];
if(isNull _ui) then {
	500 cutRsc["client_HUD_nameTags","PLAIN"];
	_ui = uiNamespace getVariable ["client_HUD_nameTags",displayNull];
};

{
	private["_text"];
	_pos = [visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5];
	_sPos = worldToScreen _pos;
	_distance = _x distance player;
	_name = getPlayerUID  _x;
	
	_dickbag = true;
	_text = "";
	
	_isAdmin = _x getVariable ["st_hide", false];
	
	if(count _sPos > 1 && isPlayer _x && _distance < 2 && !adminESP && _x != player && vehicle player == player && currentweapon player == "" && !_isAdmin) then {
		if(_x isKindOf "Man") then {
			_text = format["<t color='#FFFFFF' font='puristaMedium'>%1</t>",_name];
		} else {
			_crew = crew (vehicle _x);
			{
				_names = format[" & %1",name (_crew select _n)];
			}foreach _crew;
			_text = format["<t color='#FFFFFF' font='puristaMedium'>%1</t>",_names];
		};

		_idc = _ui displayCtrl (iconID + _forEachIndex);
		_idc ctrlSetStructuredText parseText _text;
		_idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
		_idc ctrlSetScale scale;
		_idc ctrlSetFade 0;
		_idc ctrlCommit 0;
		_idc ctrlShow true;
	};
} foreach allPlayers;


