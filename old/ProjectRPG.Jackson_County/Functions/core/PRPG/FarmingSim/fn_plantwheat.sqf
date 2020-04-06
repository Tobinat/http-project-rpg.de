{
	_boden = _x;
    _plant = "a3l_wheat" createvehicle [0,0,0];
    _pos = getpos _boden;
	_plantpos = getPos _boden;
    _plant setpos _plantpos;
} forEach (nearestObjects [[3558.92,1924.79,0.00144196], ["Land_elementsSoilPatch1"], 60]);
