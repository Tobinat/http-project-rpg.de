params["_sound"];
if (isNil "_sound") exitWith {diag_log "Sound can't be null."};
playSound _sound;