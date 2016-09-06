/*
	File: fn_copUdcLicense.sqf
	http://project-rpg.de
*/

private _target = cursorTarget;

if(isNull _target) exitWith {};
if(!(_target isKindOf "Man")) exitWith {};
if(!(alive _target)) exitWith {};
if(_target distance player > 4) exitWith {};

private _message = format["<t size='1.5'>%1</t><br/><br/>F.B.I. / L.V. Special Force<br/>",name player];
[_message] remoteExec ["life_fnc_copLicenseShown",_target];