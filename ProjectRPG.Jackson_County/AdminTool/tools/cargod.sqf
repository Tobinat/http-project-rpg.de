if (isNil "vehGOD") then
{
	vehGOD = 0;
};

if (vehGOD == 0) then
{
	vehGod = 1;
	cutText ["Cargod enabled","PLAIN DOWN"];
	while {alive ( vehicle player ) && vehGOD == 1} do 
		{
			vehicle player setfuel 1;
			vehicle player setvehicleammo 1;
			vehicle player setdammage 0;
			sleep 0.001;
		};
}
else
{
	vehGod = 0;
	cutText ["Cargod disabled","PLAIN DOWN"];
	sleep 0.001;
}; 