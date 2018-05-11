marker_on = false;
sleep 0.3;
marker_on = true;
drawmessage = param [0,"",[""]];
posinext = param [1,[],[[]]];
while{marker_on} do {
   	if(player distance posinext < 10 && drawmessage != "Driving Test") exitwith { ["Du hast das Ziel erreicht!",false] spawn domsg; };
   	if(player distance posinext < 110 && drawmessage == "Oil") exitwith { };
   	if(drawmessage == "Oil Maintenance" && !maintenance_on) exitwith { };
   	sleep 0.05;
};
marker_on = false;