params["_player"];
_all = currentCop + currentEMS + currentFire;
if (myjob == "Cop") then {
    ["Uruchomiłeś panic button!",false] spawn domsg;
    [format["911 PANIC BUTTON: FUNKCJONARIUSZ %1 JEST W NIEBEZPIECZEŃSTWIE!", name _player], false] remoteexec ["domsg",currentCop];
    ["dpanic"] remoteExec ["client_fnc_playSound", currentCop];
    _player setVariable["pbsee",true,true];
    sleep 300;
    _player setVariable["pbsee",nil,true];
};
if (myjob == "EMS") then {
    ["Uruchomiłeś panic button!",false] spawn domsg;
    [format["911 PANIC BUTTON: MEDYK %1 JEST W NIEBEZPIECZEŃSTWIE!", name _player], false] remoteexec ["domsg",_all];
    ["dpanic"] remoteExec ["client_fnc_playSound", _all];
    _player setVariable["pbsee",true,true];
    sleep 300;
    _player setVariable["pbsee",nil,true];
};
if (myjob == "Fire") then {
    ["Uruchomiłeś panic button!",false] spawn domsg;
    [format["911 PANIC BUTTON: STRAŻAK %1 JEST W NIEBEZPIECZEŃSTWIE!", name _player], false] remoteexec ["domsg",_all];
    ["dpanic"] remoteExec ["client_fnc_playSound", _all];
    _player setVariable["pbsee",true,true];
    sleep 300;
    _player setVariable["pbsee",nil,true];
};
if !(myjob IN ["Cop","EMS","Fire"]) then {
    ["Uruchomiłeś panic button!",false] spawn domsg;
    [format["911 PANIC BUTTON: CYWIL %1 URUCHOMIŁ PANIC BUTTON!", name _player], false] remoteexec ["domsg",currentCop];
    ["dpanic"] remoteExec ["client_fnc_playSound", currentCop];
    _player setVariable["pbsee",true,true];
    sleep 300;
    _player setVariable["pbsee",nil,true];
};