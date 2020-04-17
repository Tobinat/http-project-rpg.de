if (isNil "_firstTime") then {
    _firstTime = true;
    uisleep 16;
};

_light = _this select 0;
_lightP = "\red_mods\red_city\red_trafficlight\textures\trafficlight.paa";

while {alive _light} do 
	{
		_light setObjectTextureGlobal[1,_lightP]; //red
		_light setObjectTextureGlobal[2,""];
		_light setObjectTextureGlobal[3,""];

        uisleep 16.0;

		_light setObjectTextureGlobal[1,""];
        _light setObjectTextureGlobal[2,""];
        _light setObjectTextureGlobal[3,_lightP]; //green

        uisleep 12.0;

        _light setObjectTextureGlobal[1,""];
        _light setObjectTextureGlobal[2,_lightP]; //yellow
        _light setObjectTextureGlobal[3,""];

        uisleep 3.0;


	};