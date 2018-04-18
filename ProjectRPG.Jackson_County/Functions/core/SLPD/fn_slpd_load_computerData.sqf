/*
		Author: Kajetan "Kruk" Mruk
		Date: 15.03.2017
		Params: 
			0 - Array, wanted criminals
			1 - Array, wanted vehicles
		Description: Reads data and display it on computer screen.
		Return: none
*/
disableSerialization;
waitUntil{dialog};
_display = findDisplay 666001;
_criminals = _this select 0;
_vehicles = _this select 1;
_list_criminals = _display displayCtrl 1101;
_list_vehicles = _display displayCtrl 1102;
_list_players = _display displayCtrl 1103;
//_button_findName = _display displayCtrl 1202;
//_button_findName ctrlEnable false;
lbClear _list_criminals;
{
	//id, uid_suspect, supect_name, uid_officer, officer_name, charges, wanted_level, active
	_ID = _x select 0;
	_supect_name = _x select 2;
	_wantedLevel = _x select 6;
	_list_criminals lbAdd format["ID: %1 (Poz:%3) - Posz.: %2", _ID, _supect_name, _wantedlevel];
	_list_criminals lbSetdata [(lbSize _list_criminals)-1,str(_x)];
} foreach _criminals;

lbClear _list_vehicles;
{
	//id, plate, description, uid_officer, officer_name, reason, wanted_level, active
	_ID = _x select 0;
	_plate = toUpper(_x select 1);
	_desc = _x select 2;
	_wantedLevel = _x select 6;
	_list_vehicles lbAdd format["ID: %1 (Poz:%3) - Posz.: (%4)%2", _ID, _desc, _wantedlevel, _plate];
	_list_vehicles lbSetdata [(lbSize _list_vehicles)-1,str(_x)];
} foreach _vehicles;

lbClear _list_players;
{
	if(isPlayer _x) then {
		_list_players lbADD (name _x);
		_list_players lbSetData [(lbSize _list_players)-1, str([getPlayerUID _x, _x, name _x])];
	};
} foreach playableUnits;
