pb_spielstatus=1;
["Paintballarena","A player has just opened a new lobby in the paintball arena ! The lobby closes in 120 seconds!"] remoteExecCall ["life_fnc_ryn_message",-2];
uiSleep 60;

if (count pb_spieler>=2) then {

    pb_spielstatus=2;
    {
        [2] remoteExec ["life_fnc_pb_response", _x];
    } forEach pb_spieler;
    uiSleep 60;
    _msg = "1 Minute Remains!";
    {
        [1,_msg] remoteExec ["life_fnc_pb_response", _x];
    } forEach pb_spieler;
    uiSleep 60;
    {
        [3] remoteExec ["life_fnc_pb_response", _x];
    } forEach pb_spieler;
    pb_spieler = [];
    pb_spielstatus=0;
    joinmode = 0;
    publicVariable "joinmode";

} else {

    _msg = "Not enough players to start a lobby...";
    {
        [1,_msg] remoteExec ["life_fnc_pb_response", _x];
    } forEach pb_spieler;
    pb_spieler = [];
    pb_spielstatus=0;
    joinmode = 0;
    publicVariable "joinmode";

};