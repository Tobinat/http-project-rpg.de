if (isNil "demiGOD") then
{
	demiGOD = 0;
};

if (demiGOD == 0) then
{
	demiGOD = 1;
    cutText ["GodMode Eingeschaltet. (kein Rückstoß, kein Grass, kein Nachladen)", "PLAIN"];
	player setUnitRecoilCoefficient 0;
	player removeAllEventHandlers "handleDamage";
	player addEventHandler ["handleDamage", {false}];
	player allowDamage false;
	player addEventHandler ["Fired", { (_this select 0) setVehicleAmmo 1 }]
}

else
{
	demiGOD = 0;
    cutText ["GodMode Ausgeschaltet.", "PLAIN"];
	player allowDamage true;
	player addEventHandler ["handleDamage", {true}];
	player removeAllEventHandlers "handleDamage";
	player setUnitRecoilCoefficient 1;
};