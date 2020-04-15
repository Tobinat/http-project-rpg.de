/*
		Author: Kajetan "Kruk" Mruk
		Date: 26.03.2017
		Params: 
			0 - Array, data
		Description: Updates data in the database
		Return: nothing
*/
_data = _this select 0;
_time = 0;
_reason = "";
secondsLeft = 0;
{
	_time = _time + (_x select 5);
	_reason = format["%1%2\n",_reason,(_x select 6)];
} forEach _data;


//Player setup
//Jail Positionen
_JailCell = [
	[5615.18,6336.91,0.00143433],
	[5615.19,6344.29,0.00143433],
	[5633.99,6344.38,0.00143433],
	[5634.17,6337.02,0.00143433],
	[5594.69,6351.81,0.00143433],
	[5594.4,6359.87,0.00143433],
	[5575.64,6359,0.00143433],
	[5576.7,6351.29,0.00143433],
	[5537.39,6335.26,0.00143433],
	[5555.88,6335.36,0.00143433],
	[5556.15,6343.61,0.00143433],
	[5537.05,6342.71,0.00143433] 
	] call BIS_fnc_selectRandom;

player setPos _JailCell;

removeuniform player;
player adduniform "noRP_Jail";
player setVariable ["ace_captives_isHandcuffed",false];
_escaped = false;
secondsLeft = _time;
ClientArrested = true;
imrestrained = false;
_update = 0;
player setVariable ["coplevel", 0, false];

while{ClientArrested} do {
	if(getpos player distance [5556.2,6291.29,0.00143433] > 300) exitwith { _escaped = true; };
	uisleep 60;
	_time = _time - 1;
	secondsLeft = _time;
	_update = _update + 1;
	if(_time < 0) exitwith {
		//zerowanie w db [updateSLPDPrison_ended]
		["ended", [getPlayerUID player]] remoteExec ["server_fnc_slpdPrisonUpdate",2];
	};
	if(_update == 5) then {
		_first = _data select 0;
		_time_left = (_first select 5) - 5;
		if(_time_left > 0) then {
			_id = _first select 0;
			_first set [5, _time_left];
			_data set [0, _first];
			["time", [_time, _id]] remoteExec ["server_fnc_slpdPrisonUpdate",2];
		} else {
			_data deleteAt 0;
			_id = _first select 0;
			_first = _data select 0;
			_time_left = (_first select 5) + _time_left;
			_first set [5, _time_left];
			_data set [0, _first];
			//usunięcie z db po id [updateSLPDPrison_finish]
			["finish", [_id]] remoteExec ["server_fnc_slpdPrisonUpdate",2];
		};
		_update = 0;
	};
};
ClientArrested = false;
//when jail time ends normally
if(!_escaped) then {
	hint "Haftstrafe abgesessen";
	player setpos [5538.63,6258.06,0.00143433];
} else {
	hint "Du bist aus dem Gefaengnis entkommen!";
	//ustawianie wszystkiego na nieaktywne [updateSLPDPrison_deactive]
	["escape", [getPlayerUID player]] remoteExec ["server_fnc_slpdPrisonUpdate",2];
	_data = [getPlayerUID player, "911", format["Flucht aus dem Gefängnis,verbleibende Zeit: %1 Monat/e", _time], 5];
	["personal", _data] remoteExec ["server_fnc_slpdCaseAdd", 2];
};

