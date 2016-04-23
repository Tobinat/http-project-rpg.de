//Server File Stealer//
//Created By Lystic//

if (!isDedicated) then
{


A3L_isDancing = false;
A3L_Fnc_Dance = 
{
if (!A3L_isDancing) then
{
A3L_isDancing = true;
if (!isNil "life_fnc_animsync") then 
{
[player,"A3L_Dance"] remoteExecCall ["life_fnc_animsync"];
} else
{
player switchmove "A3L_Dance";
};

[] spawn 
{
uiSleep 40;
[player,""] remoteExecCall ["life_fnc_animsync"];
A3L_isDancing = false;
};			
} else 
{
["You are already dancing!",30,"red"] call A3L_Msg_Fnc;
};
};
};