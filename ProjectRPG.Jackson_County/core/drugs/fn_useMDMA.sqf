/*
	File: fn_useMDMA.sqf
	Description:
	Use MDMA
*/

#include <macro.h>
 

if (vehicle player != player) then 
{
player playMove "AmovPercMstpSnonWnonDnon_Scared2";
waitUntil{animationState player != "AmovPercMstpSnonWnonDnon_Scared2";};
};

[0,format["%1 sieht aus, als hätte er/sie MDMA genommen.",name player]] remoteExecCall ["life_fnc_broadcast", -2];
closeDialog 0;

"chromAberration" ppEffectAdjust [random 0.1,random 0.1,true];
"chromAberration" ppEffectCommit 4; 
life_redgull_effect = time;
[localize "Yep, genau richtig!", false] spawn domsg;
player enableFatigue false;
waitUntil {deadPlayer OR ((time - life_redgull_effect) > (15 * 60))};
player enableFatigue true;

["Du bekommst Schweißausbrüche - Dein Körper benötigt etwas zu Essen oder noch mehr MDMA!", false] spawn domsg;
"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;
