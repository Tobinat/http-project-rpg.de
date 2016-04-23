tf_no_auto_long_range_radio = true; 
tf_west_radio_code = "";
tf_east_radio_code = tf_west_radio_code;
tf_guer_radio_code = tf_west_radio_code;
tf_civ_radio_code = tf_west_radio_code;
enableSaving [false, false];

[] execVM "briefing.sqf";
[] execVM "KRON_Strings.sqf";
[] execVM "AdminTool\loop.sqf";



if(isServer) then {
	_obj = [8546.45,6796.53,8] nearestObject 1005977; 
	_obj enableSimulationGlobal false;
	_obj hideObjectGlobal true;
};

if(!isDedicated && {!hasInterface}) then
{
	waitUntil {!isNull player};
	[] call compile PreprocessFileLineNumbers "\life_server\fn_initHC.sqf";
};
player setVariable["loaded", false, true];




0 setWaves 0.00;
0 setFog 0.00;
0 setRain 0.00;
0 setOvercast 0.00;
0 setRainbow 0.00;
0 setLightnings 0.00;
setTerrainGrid 50;