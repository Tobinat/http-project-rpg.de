private["_unit","_type"];
_unit = lbData[5338,lbCurSel (5338)];
_type = _this select 0;
_unit = call compile format["%1", _unit];
closedialog 0;
if(isNil "_unit") exitwith {};
if(isNull _unit) exitWith {};

if(tryingcall) exitwith { ["Please wait before adding a person to the call - one is being connected!", false] spawn domsg; };
if(PhonesRinging) exitwith { ["Please wait before adding a person to the call - one is being connected!", false] spawn domsg; };

[] spawn client_fnc_checkCall;
[myCallOwner,_type] remoteExec ["client_fnc_ringPlayer",_unit];


if(_type == 1) then {

	[] spawn {
		_mypos = getpos player;
		while { TryingCall || CallInProgress } do {
			if(player distance _mypos > 5) exitwith { [] spawn client_fnc_hangup; };
			uisleep 1;
		};	

	};

};