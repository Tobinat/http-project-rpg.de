params["_location"];

_delete = [];
{ 
	
	if((_x select 1) isEqualTo _location) then {
		_count = fires find _x;
		_delete pushback _count;
		(_x select 0) setdamage 1;
		deletevehicle (_x select 0); 
	};
}foreach fires;

{ if (typeOf _x == "#particlesource") then { _x setdamage 1; deleteVehicle _x; } } forEach (_location nearObjects 40);  

{ fires deleteAT _x; } foreach _delete;