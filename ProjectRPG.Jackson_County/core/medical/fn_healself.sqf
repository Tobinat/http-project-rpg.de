/*
	Function to heal self
	fn_healself.sqf
*/

if(!life_action_inUse) then {
	life_action_inUse = true;

	if (isNull objectParent player) then 
	{
		player switchMove "ainvpknlmstpslaywnondnon_medic";
		
		waitUntil{animationState player != "ainvpknlmstpslaywnondnon_medic";};
	};

};
life_action_inUse = false;	
