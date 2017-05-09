
if(str CurrentCursorTarget find "tallerdepinturaabandonado" > -1 || str CurrentCursorTarget find "otros" > -1 || str CurrentCursorTarget find "garaje" > -1 ) then { createdialog "garageplates"; } else { createDialog "garage"; };

ctrlSetText [1000, "Garage"];

_garage = player getVariable "garage";

{
	_class = _x select 1;
	_vehicleName = [_class] call Client_fnc_getVehicleName; 
	_Color = _x select 2;
	_license = _x select 0;
	_availability = _x select 7;
	if(_availability == 1) then {
		if((str CurrentCursorTarget find "embarcadero" > -1 ) && _class isKindOf "Ship" ) then {
			_veh = lbAdd [1500, format["%2 %1 - License: %3",_vehicleName, _color, _license] ];
			lbSetData [1500, _veh, format["%1",Str(_x)]];
		} else {
			if !(_class isKindOf "Ship") then {
				_veh = lbAdd [1500, format["%2 %1 - License: %3",_vehicleName, _color, _license] ];
				lbSetData [1500, _veh, format["%1",Str(_x)]];
			};
		};
	};
}forEach _garage;

lbSetCurSel [1500, 0];



