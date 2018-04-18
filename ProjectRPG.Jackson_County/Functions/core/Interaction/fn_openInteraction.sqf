/*


foreach action in the NoPixel_InteractionMenuItems check every condition

if every condition isn't true, move to next action

if every condition is true, show the button and take the button text and set it for the button
and then add the action to an array of all actions which will be used by interactionAction to define on wich action will wich one be called
*/
disableSerialization;
CurrentCursorTarget = cursorObject;
if(currentcursortarget distance player > 20) then { currentcursortarget = objNull; };
penis = nearestObjects [player, [], 3];
if (!isNull findDisplay 1014) exitWith {};

createDialog "interaction";

{
	ctrlShow [_x, false];
}forEach NoPixel_InteractionButtons;

_index1 = 0;
NoPixel_iCurActionArray = [];

_display = findDisplay 1014;

{

	_cArray = _x select 0;
	_countC = (count _cArray) - 1;
	_cTrue = true;
	
	for "_i" from 0 to _countC step 1 do 
	{
		_c = call compile (_cArray select _i);
		if (!_c) then 
		{
			_cTrue = false;
		};
		
	};
	
	if (_cTrue) then 
	{
	
		if (_index1 < 25) then 
		{
			_idc = 1600 + _index1;
			_index1 = _index1 + 1;
			_text = (_x select 1) select 0;
			_action = (_x select 1) select 1;
			_color = call compile format["%1",(_x select 1) select 2];
			
			if(true) then {
				if(_color == 2) exitwith { _idc = (_idc * 10) + 1; };
				if(_color == 3) exitwith { _idc = (_idc * 10) + 2; };
				if(_color == 4) exitwith { _idc = (_idc * 10) + 3; };
			};

			ctrlShow [_idc, true];
			ctrlSetText [_idc, _text];

			_control = _display displayCtrl _idc;

			_control ctrlSettextColor [1, 1, 1, 1];

			NoPixel_iCurActionArray pushBack _action;
		};
		
	};
	
}forEach NoPixel_InteractionMenuItems;