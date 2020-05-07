params ["_vehinfo"];

_car = _vehinfo select 1;

_name = getText(configfile >> "CfgVehicles" >> _car >> "displayName");
_maxspeed = round(getNumber(configfile >> "CfgVehicles" >> _car >> "maxSpeed"));
_redline = round(getNumber(configfile >> "CfgVehicles" >> _car >> "redRpm"));
_enginePower = round(round(getNumber(configfile >> "CfgVehicles" >> _car >> "enginePower")*1.341));
_peaktorque = round(getNumber(configfile >> "CfgVehicles" >> _car >> "peakTorque"));
_plate = _vehinfo select 0;
_body = getText(configfile >> "CfgIvoryTextures" >> (_vehinfo select 2) >> "displayName");
_bodyFinish = getText(configfile >> "CfgIvoryMaterials" >> (_vehinfo select 3) >> "displayName");
_seats = getNumber(configfile >> "CfgVehicles" >> _car >> "transportSoldier")+1;
_owner = _vehinfo select 5;
_rims = "N/A";

_text = format["
<img image='%10' size='22' align='center'/><br/><br/>
Model | %1<br/>
Plate | %6 <br/>
Color | %8 (%7) <br/>
Number of Seats | %9 <br/>
Maximum Speed | %2 Km/h <br/>
Redline | %3 RPM <br/>
Horsepower | %4 hp <br/>
Torque | %5 Nm <br/>
Owner | %11",

	_name,
	_maxspeed,
	_redline,
	_enginePower,
	_peaktorque,
	_plate,
	_bodyFinish,
	_body,
	_seats,
	_editorPreview,
	_owner
];

show = format["%1<br/>",_text] + format["%1",show];

_computer = (findDisplay 9154) displayCtrl 4110;
_computer ctrlSetStructuredText parseText format["<br/>%1",show];
_computer ctrlCommit 0;

_textHeight = ctrltextheight _computer;
if(_textHeight > 1) then {
	_controlPos = ctrlposition _computer;
	_controlPos set [3,_textHeight];
	_computer ctrlsetposition _controlPos;
	_computer ctrlcommit 0;
} else {
	_controlPos = ctrlposition _computer;
	_controlPos set [3,1];
	_computer ctrlsetposition _controlPos;
	_computer ctrlcommit 0;
};