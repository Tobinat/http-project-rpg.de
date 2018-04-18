_idc = ctrlIDC (_this select 0);          
_selectedIndex = _this select 1;         
_unit = player;
_item = lbData [_idc, _selectedIndex];

if (_item == "np_fastfood") then { [_item] spawn fnc_removeitem; closeDialog 0; };

false