params["_player"];
_all = currentCop + currentEMS + currentFire;
if (myjob == "Cop") then {
    ["Panikknopf ausgelöst!",false] spawn domsg;
    {
        _unit = _x call BIS_fnc_getUnitByUid;
        [format["911 PANIC BUTTON: Officer %1 ist in Gefahr!", name _player], false] remoteexec ["domsg",_unit];
        ["dpanic"] remoteExec ["client_fnc_playSound", _unit];
    } foreach currentCop;
    _player setVariable["pbsee",true,true];
    sleep 300;
    _player setVariable["pbsee",nil,true];
};
if (myjob == "EMS") then {
    ["Panikknopf ausgelöst!",false] spawn domsg;
    {
        _unit = _x call BIS_fnc_getUnitByUid;
        [format["911 PANIC BUTTON: S.L.F.D. Mitarbeiter %1 ist in Gefahr!", name _player], false] remoteexec ["domsg",_unit];
        ["dpanic"] remoteExec ["client_fnc_playSound", _unit];
    } foreach _all;
    _player setVariable["pbsee",true,true];
    sleep 300;
    _player setVariable["pbsee",nil,true];
};
if (myjob == "Fire") then {
    ["Panikknopf ausgelöst!",false] spawn domsg;
    {
        _unit = _x call BIS_fnc_getUnitByUid;
        [format["911 PANIC BUTTON: Mitarbeiter %1 ist in Gefahr!", name _player], false] remoteexec ["domsg",_unit];
        ["dpanic"] remoteExec ["client_fnc_playSound", _unit];
    } foreach _all;

    _player setVariable["pbsee",true,true];
    sleep 300;
    _player setVariable["pbsee",nil,true];
};
if !(myjob IN ["Cop","EMS","Fire"]) then {
    ["Panikknopf ausgelöst!",false] spawn domsg;
    {
        _unit = _x call BIS_fnc_getUnitByUid;
        [format["911 PANIC BUTTON: Zivilist %1 ist in Gefahr!", name _player], false] remoteexec ["domsg",_unit];
        ["dpanic"] remoteExec ["client_fnc_playSound", _unit];
    } foreach currentCop;
    _player setVariable["pbsee",true,true];
    sleep 300;
    _player setVariable["pbsee",nil,true];
};