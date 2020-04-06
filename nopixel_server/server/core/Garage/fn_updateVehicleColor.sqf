/*
    Author: Kajetan "Kruk" Mruk
    Date: 03.02.2017

    Params:
        0 - String - name of color
        1 - String - name of finish
        2 - String - name of rims color
        3 - Number - lights shadowing
        4 - Number - window shadowing
        5 - String - license plate
    Description: Updates vehicle colors
    Return: nothing
 */
 params["_selectedColor","_selectedFinish","_selectedRims","_selectedLights","_selectedWindows","_license"];

_updatestr = format["vehicleChangeColor:%1:%2:%3:%4:%5:%6", _selectedColor, _selectedFinish, _selectedRims, _selectedWindows, _selectedLights, _license];
_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;