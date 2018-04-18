/*
	File: fn_untie.sqf
*/
params["_unit"];

if((imRestrained) || (player getVariable ["escorting", false])) exitWith { 
["Nie możesz tego zrobić.", false] spawn domsg;
//titleFadeOut 5;
}; 

if(isNull _unit || !(_unit getVariable ["gagged", false])) exitWith {};

_unit setVariable["gagged", nil, true];
_unit setVariable ["tf_voiceVolume", 1, true];