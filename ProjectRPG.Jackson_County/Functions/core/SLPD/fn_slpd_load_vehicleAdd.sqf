/*
		Author: Kajetan "Kruk" Mruk
		Date: 15.03.2017
		Params: 
		Description: Reads personal data and display it on computer screen.
		Return: none
*/
disableSerialization;
closeDialog 0;
_data = _this select 0;
_ok = createDialog "kruk_slpd_vehicle_add";
if(!_ok) exitWith { hint "Dialog not created"; };
_display = findDisplay 666004;
_edit_plate = _display displayCtrl 1001;
_edit_description = _display displayCtrl 1003;
//license, class, color, finish, rims, windows, lights, statuses, owner, fuel, damage
_plate = toUpper(_data select 0);
_class =_data select 1;
_color = _data select 2;
_color = getText(configFile >> "CfgIvoryTextures" >> _color >> "displayName");
_name = getText(configFile >> "CfgVehicles" >> _class >> "displayName");
_edit_plate ctrlSetText _plate;
_edit_description ctrlSetText format["%1 (%2)", _name, _color];