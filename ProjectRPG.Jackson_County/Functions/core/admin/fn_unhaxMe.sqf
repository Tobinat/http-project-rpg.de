private["_vars","_var","_nonGutVars","_inString","_str"];
_vars = allVariables missionNamespace;
_str = "";
_nonGutVars = ["nigger"];
{
      _var = _x;
      {
            _inString = [_x, _var] call BIS_fnc_inString;
            if(_inString) exitWith {
                  _str = _str + format["%1 ",_var];
				  missionNamespace setVariable[_var, nil];
            };
      } foreach _nonGutVars;
} forEach _vars;
if(_str != "") then {
	[player, 1, _str, getPlayerUID player, getUnitLoadout player] remoteExec ["server_fnc_haxLog",2];
};
