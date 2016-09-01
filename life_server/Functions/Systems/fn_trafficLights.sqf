/*
	File: fn_trafficLights.sqf
	Author: Steven Campbell
*/

_1a1 = nearestObject [[8538.83,6580.55,0.0999994], "Land_E76_trafficlight02a"];
_1a2 = nearestObject [[8564.94,6599.19,0.0999994], "Land_E76_trafficlight02a"];
_1b1 = nearestObject [[8560.69,6576.75,0.0999994], "Land_E76_trafficlight02a"];
_1b2 = nearestObject [[8542.31,6603.25,0.0999994], "Land_E76_trafficlight02a"];

_2a1 = nearestObject [[8559.91,6702.75,0.0999994], "Land_E76_trafficlight02a"];
_2a2 = nearestObject [[8584.66,6711.34,0.0999994], "Land_E76_trafficlight02a"];
_2b1 = nearestObject [[8582.81,6698.59,0.0999994], "Land_E76_trafficlight03a"];
_2b2 = nearestObject [[8561.75,6715.16,0.0999994], "Land_E76_trafficlight03a"];

_3a1 = nearestObject [[8633.36,6689.42,0.0999994], "Land_E76_trafficlight02a"];
_3a2 = nearestObject [[8658.5,6698.38,0.0999994], "Land_E76_trafficlight02a"];
_3b1 = nearestObject [[8635.84,6702.06,0.0999994], "Land_E76_trafficlight03a"];
_3b2 = nearestObject [[8656.66,6685.59,0.0999994], "Land_E76_trafficlight03a"];

_4a1 = nearestObject [[8654.06,6808.72,0.0999994], "Land_E76_trafficlight02a"];
_4a2 = nearestObject [[8681.03,6826.94,0.0999994], "Land_E76_trafficlight02a"];
_4b1 = nearestObject [[8677.22,6803.5,0.0999994], "Land_E76_trafficlight02a"];
_4b2 = nearestObject [[8659.03,6830.69,0.0999994], "Land_E76_trafficlight02a"];

as = [_1a1,_1a2,_2a1,_2a2,_3a1,_3a2,_4a1,_4a2];//as on same
bs = [_1b1,_1b2,_2b1,_2b2,_3b1,_3b2,_4b1,_4b2];//bs on same

//on server start set bs red
{
	_x animate ["switchred",0];
} foreach bs;

active = as;
lightSwitch = true;
counter = 0;

_lightLoop = {
	
	if(counter == 0) exitWith {
		{
			_x animate ["switchgreen",0];
		} foreach active;
			
		{
			_x animate ["switchred",1];
		} foreach active;
		counter = 3;
	};
	if(counter < 17 && {counter > 0}) exitWith {
		counter = counter + 3;
	};
	if(counter == 18) exitWith {
		{
			_x animate ["switchgreen",1];
		} foreach active;
		
		{
			_x animate ["switchyellow",0];
		} foreach active;
		counter = 21;
	};
	if(counter < 23 && {counter > 17}) exitWith {
		counter = counter + 3;
	};
	if(counter == 24) exitWith {
		{
			_x animate ["switchyellow",1];
		} foreach active;
		
		{
			_x animate ["switchred",0];
		} foreach active;
		counter = 27;
	};
	
	if(lightSwitch) then {
		active = bs;
		lightSwitch = false;
	} else {
		active = as;
		lightSwitch = true;
	};
	
	if(counter == 27) then {
		counter = 0;
	};
	
	if(isServer && {life_loopExit}) exitWith {
		[_this select 1] call CBA_fnc_removePerFrameHandler;
		as = nil;
		bs = nil;
		active = nil;
		lightSwitch = nil;
		counter = nil;
		[] remoteExecCall ["TON_fnc_trafficLights",hc_1];
	};
	if(isServer && {!isNil "hc_1"} && {!isNil "life_HC_isActive"} && {life_HC_isActive}) exitWith {
		[_this select 1] call CBA_fnc_removePerFrameHandler;
		life_loopExit = true;
		as = nil;
		bs = nil;
		active = nil;
		lightSwitch = nil;
		counter = nil;
		[] remoteExecCall ["TON_fnc_trafficLights",hc_1];
	};
};

[_lightLoop, 3, []] call CBA_fnc_addPerFrameHandler;