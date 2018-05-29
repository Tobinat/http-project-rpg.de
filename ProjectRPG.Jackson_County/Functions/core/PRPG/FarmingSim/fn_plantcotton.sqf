{
	_boden = _x;
    _plant = "a3l_cotton" createvehicle [9794,978,0.0014];
    _pos = getpos _boden;
	_plantpos = getPos _boden;
    _plant setpos _plantpos;
} forEach (nearestObjects [[3670.99,1852.71,0.00189972], ["Land_elementsSoilPatch1"], 100]);