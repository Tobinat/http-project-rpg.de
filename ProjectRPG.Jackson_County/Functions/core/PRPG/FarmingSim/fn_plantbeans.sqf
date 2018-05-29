{
	_boden = _x;
    _plant = "a3l_beans" createvehicle [0,0,0];
    _pos = getpos _boden;
	_plantpos = getPos _boden;
    _plant setpos _plantpos;
} forEach (nearestObjects [[3572.83,1758.38,0.000984192], ["Land_elementsSoilPatch1"], 60]);
