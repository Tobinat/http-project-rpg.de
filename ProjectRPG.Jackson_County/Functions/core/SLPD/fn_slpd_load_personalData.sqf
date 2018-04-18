/*
		Author: Kajetan "Kruk" Mruk
		Date: 15.03.2017
		Params: 
			0 - Array, active wanted cases
			1 - Array, last active wanted cases
			2 - Array, last tickets of player
			3 - Array, vehicles of player
			3 - Array, player info 
		Description: Reads personal data and display it on computer screen.
		Return: none
*/
disableSerialization;
_activeCases = _this select 0;
_prevCases = _this select 1;
_tickets = _this select 2;
_vehicles = _this select 3;
_playerInfo = (_this select 4) select 0;
if(count _playerInfo != 0) then {
	closeDialog 0;
	_ok = createDialog "kruk_slpd_casefile";
	if(!_ok) exitWith { hint "Dialog not created"; };
	_display = findDisplay 666002;

	_list_tickets = _display displayCtrl 1101;
	_list_activeCases = _display displayCtrl 1102;
	_list_prevCases = _display displayCtrl 1103;
	_list_vehicles = _display displayCtrl 1104;
	_text_info = _display displayCtrl 1301;

	_points = 0;
	_string = "";
	_uid = _playerInfo select 0;
	_playerName = _playerInfo select 1;
	_level_cop = _playerInfo select 2;
	_level_ems = _playerInfo select 3;
	_level_fire = _playerInfo select 4;
	_level_legal = _playerInfo select 5;
	_services = "";
	if(_level_cop > 0) then { _services = _services + "PD "; };
	if(_level_ems > 0) then { _services = _services + "EMS "; };
	if(_level_fire > 0) then { _services = _services + "FD "; };
	if(_level_legal > 0) then { _services = _services + "LEGAL "; };
	if(_services == "") then { _services = "BRAK"; };
	
	_statuses = _playerInfo select 6;
	//_cash = _playerInfo select 7;
	//_bank = _playerInfo select 8;
	_licenses = _statuses select 8;

	lbClear _list_activeCases;
	{
		//id, uid_suspect, supect_name, uid_officer, officer_name, charges, wanted_level, active
		_ID = _x select 0;
		_charges = _x select 5;
		_wantedLevel = _x select 6;
		_list_activeCases lbAdd format["ID: %1; Poziom: %3; Zarzuty: %2", _ID, _charges, _wantedlevel];
		_list_activeCases lbSetdata [(lbSize _list_activeCases)-1,str(_x)];
	} foreach _activeCases;

	lbClear _list_prevCases;
	{
		//id, uid_suspect, supect_name, uid_officer, officer_name, charges, wanted_level, active
		_ID = _x select 0;
		_charges = _x select 5;
		_wantedLevel = _x select 6;
		_list_prevCases lbAdd format["ID: %1; Poziom: %3; Zarzuty: %2", _ID, _charges, _wantedlevel];
		_list_prevCases lbSetdata [(lbSize _list_prevCases)-1,str(_x)];
	} foreach _prevCases;

	lbClear _list_vehicles;
	{
		//license, class, color, finish, rims, windows, lights, statuses, owner, fuel, damage
		_plate = toUpper(_x select 0);
		_class = _x select 1;
		_color = _x select 2;
		_color = getText(configFile >> "CfgIvoryTextures" >> _color >> "displayName");
		_name = getText(configFile >> "CfgVehicles" >> _class >> "displayName");
		_list_vehicles lbAdd format["Rej: %1; Model: %2; Kol: %3", _plate, _name, _color];
		_list_vehicles lbSetdata [(lbSize _list_vehicles)-1,str(_x)];
	} foreach _vehicles;

	lbClear _list_tickets;
	{
		//t.id, t.uid_player, s.name, t.uid_officer, o.name, t.reason, t.amount, t.points
		_id = _x select 0;
		_tPoints = _x select 7;
		_reason = _x select 5;
		_amount = _x select 6;
		_points = _points + _tPoints;
		_list_tickets lbAdd format["ID: %1; Powód: %2; Kwota: $%3", _id, _reason, _amount];
		_list_tickets lbSetdata [(lbSize _list_tickets)-1,str(_x)];
	} foreach _tickets;


	_string = _string + format["Imię i Nazwisko: %1\nPESEL: %2\n", _playerName, _uid];
	if(count _activeCases == 0) then { _string = _string + "Poszukiwany: NIE\n"; } else { _string = _string + "Poszukiwany: TAK\n"; };
	_string = _string + format["Ilość punktów karnych: %1\nPrzynależność do służb: %2\nLicencje:\n", _points, _services];
	if(_licenses select 0 == 1) then { _string = _string + "Prawo Jazdy "; };
	if(_licenses select 1 == 1) then { _string = _string + "Licencja na Bron\n"; };
	if(_licenses select 2 == 1) then { _string = _string + "Licencja Gornika "; };
	if(_licenses select 3 == 1) then { _string = _string + "Licencja Drwala "; };
	if(_licenses select 4 == 1) then { _string = _string + "Licencja Rybaka\n"; };
	_text_info ctrlSetText _string;
	kruk_slpd_computer_data = [_uid, objNull, _playerName];
} else {
	hint "Nie ma takiego rekordu.";
};