
if(player distance getmarkerpos "rally_1" > player distance getmarkerpos "formula1") then {

	{
		_position = call compile format["%1",(_x select 0)];
		_time = call compile format["%1",(_x select 1)];
		_name = (_x select 2);
		_veh = lbAdd [ 9001, format["%1 - %2 s - %3",_position, _time, _name] ];
	}forEach racetimes;

} else {
	
	{
		_position = call compile format["%1",(_x select 0)];
		_time = call compile format["%1",(_x select 1)];
		_name = (_x select 2);
		_veh = lbAdd [ 9001, format["%1 - %2 s - %3",_position, _time, _name] ];
	}forEach rallyracetimes;


};