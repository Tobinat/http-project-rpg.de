/*
    Author: PRPG
    Date: 28.01.2017

    Params:
        1 - Object - Suspect object
        2 - Object - Victim object
        3 - String - Crime shortname
    Description: Function that generates an evidence on object.
    Return: nothing
 */
//private["_suspect","_victim","_crime"];
params ["_suspect","_victim", "_crime"];

_suspect = _this select 0;
_victim = _this select 1;
_crime = _this select 2;
_evidence = _victim getVariable ["evidence",[]];

/*
switch(_crime) do {
	case "bankRobbery": {};
	case "bankDrill": {};
	case "vaultBreach": {};
	case "blowDoor": {};
	case "hackDoor": {};
	case "storeRobbery": {};
	case "personRobbery": {};
	case "carRobbery": {};
	case "killAtempt": {};
	case "kill": {};
	case "vehicleKill": {};
};
*/

_evidence pushBack [_suspect, getPlayerUID _suspect, _crime, name _suspect];
_victim setVariable ["evidence",_evidence,true];
