#include <macro.h>
/*
	std / hooker / prostitute
*/
if(life_std == 1) exitWith { ["You are already ready for sex..", false] spawn domsg; };
life_std = 1;

["You are ready for sex for the next 10 minutes.", false] spawn domsg;
uiSleep 600;

["Your sex protection has worn out, damn!", false] spawn domsg;
life_std = 0;