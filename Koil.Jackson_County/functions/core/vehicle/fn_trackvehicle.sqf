

params ["_veh"];

if(_veh iskindof "Car" || _veh iskindof "Ship" || _veh iskindof "Air") then {
	_veh setvariable ["tracking",true,false];
};