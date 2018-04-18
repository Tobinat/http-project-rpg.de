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
player setpos [5618.46,6335.5,0.00143433];
removeuniform player;
player adduniform "noRP_Jail";
_escaped = false;
secondsLeft = _time;
ClientArrested = true;
imrestrained = false;
_update = 0;
player setVariable ["coplevel", 0, false];

while{ClientArrested} do {
	if(getpos player distance [5556.2,6291.29,0.00143433] > 400) exitwith { _escaped = true; };
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
	hint "Skonczyles odsiadke";
	player setpos [5538.63,6258.06,0.00143433];
} else {
	hint "Uciekłeś z wiezienia!";
	//ustawianie wszystkiego na nieaktywne [updateSLPDPrison_deactive]
	["escape", [getPlayerUID player]] remoteExec ["server_fnc_slpdPrisonUpdate",2];
	_data = [getPlayerUID player, "911", format["Ucieczka z wiezienia, pozostało: %1 miesięcy", _time], 5];
	["personal", _data] remoteExec ["server_fnc_slpdCaseAdd", 2];
};

