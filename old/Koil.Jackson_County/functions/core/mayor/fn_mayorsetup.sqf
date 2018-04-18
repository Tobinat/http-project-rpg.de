hint "You are the Mayor of Silver Lake City, welcome!";
format["The Mayor of Silver Lake is awake! %1", name player] remoteexec ["hint",-2];
Mayor = true;
player setVariable ["coplevel", 1, false];