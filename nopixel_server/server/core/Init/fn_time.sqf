_dateHour = date select 3;
if (5 < _dateHour && _dateHour < 19) then {
    setTimeMultiplier 8;
} else {
    setTimeMultiplier 36;
};

2 setFog 0;

diag_log "fn_time.sqf has been called";