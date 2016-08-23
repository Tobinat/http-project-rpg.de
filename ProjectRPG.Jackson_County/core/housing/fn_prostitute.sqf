#include <macro.h>
/*
	std / hooker / prostitute
*/
if(life_std == 1) exitWith { ["Na süßer Ich bin günstiger als du denkst.", false] spawn domsg; };
life_std = 1;

["Du kannst noch ca 10 Minuten dippen", false] spawn domsg;
uiSleep 600;

["Das Gummi ist geris... oooh Fuck warst du gut Baby!", false] spawn domsg;
life_std = 0;