//License Test Ground Vehicles


["Deine praktische Prüfung beginnt - Fahre nicht schneller als 70kmh - und denk daran, dich anzuschnallen!",false] spawn domsg;
playSound "racebeep1";
sleep 1;
["Deine praktische Prüfung beginnt - Fahre nicht schneller als 70kmh - und denk daran, dich anzuschnallen!",false] spawn domsg;
playSound "racebeep1";
sleep 1;
["Deine praktische Prüfung beginnt - Fahre nicht schneller als 70kmh - und denk daran, dich anzuschnallen!",false] spawn domsg;
playSound "racebeep1";
sleep 1;
beginpos = getpos player;
_totaltest = 4;
myvehicletesticle = createVehicle ["critgamin_smart_civ", (getmarkerpos "t_test_3"), [], 0, "NONE"];
sleep 1;
player action ["getInDriver", myvehicletesticle];	
totalres = 0;
while{_totaltest > 0} do {
	while{true} do {
		_chance = round (random 19);
		_marker = format["t_test_%1", _chance];
		postest = getmarkerpos _marker;
		if(player distance postest < 500) exitwith {};
		sleep 1;
	};
	["Schaue dich in der Stadt um, um den nächsten Checkpoint zu finden!",false] spawn domsg;
	["Driving Test",postest] spawn fnc_draw3d;
	_timer = 0;
	anwser = "Error";
	_shitcunt = 0;
	while{true} do {
		if(!life_seatbelt) exitwith { answer = "No Seatbelt"; };
		if(player distance postest < 15) exitwith { answer = "Checkpoint Success!"; totalres = totalres + 1; };
		if(speed player >= 75) exitwith { answer = "Speeding Failure"; (vehicle player) setVelocity [0, 0, 0]; };
		if(_timer > 120) exitwith { answer = "Time Failure"; };
		_timer = _timer + 1;
		uisleep 1;
		hint parsetext format["<img size='1' image='icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/> Du hast %1 Sekunden gebraucht.",_timer];
	};
	playSound "racebeep1";
	[format["%1",answer],false] spawn domsg;
	marker_on = false;
	sleep 3;
	_totaltest = _totaltest - 1;
};

if(totalres > 1) then {
	endresult = "PASS: You can now purchase a Truck and Car license from the DMV.."; 
	driver_test = true;
} else { 
	endresult = "FAIL: You failed the driving test! Well done, you suck!"; 
};

[endresult,false] spawn domsg;
(vehicle player) setVelocity [0, 0, 0];
sleep 0.05;
player action ["Eject", vehicle player];
deletevehicle myvehicletesticle;
marker_on = false;
if(life_istazed) exitWith {};
if(life_interrupted) exitWith {};
if((player getVariable["restrained",false])) exitWith {};
player setpos beginpos;

