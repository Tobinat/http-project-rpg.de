A3L_Fnc_stripLineBreaks = {






_a = toArray _this;
for "_i" from 0 to ((count _a)-2) do 
{
if ((_a select _i == 92) && (_a select (_i+1) in [78, 110])) then
{
_a set [_i, 32]; 
_a set [_i+1, 990]; 
};
};
_a = _a-[990]; 
toString _a 

};

A3L_Fnc_replaceAmpersands = {




private ["_a", "_r", "_i", "_j", "_c"];








_a = toArray _this;
_r = +_a; 
_j = 0;

for "_i" from 0 to ((count _a)-1) do
{
_c = _a select _i;
_r set [_j, _c];
if (_c == 38) then
{
_r set [_j+0, 38];
_r set [_j+1, 97];
_r set [_j+2, 109];
_r set [_j+3, 112];
_r set [_j+4, 59];
_j = _j + 5; 
}
else
{
_j = _j + 1;
};
};

toString _r 
};



A3L_fnc_requestLayer = {
private ["_result", "_id"];

if (isNil "A3L_lastUsedLayer1") then {A3L_lastUsedLayer1 = 27407}; 
if (isNil "A3L_lastUsedLayer2") then {A3L_lastUsedLayer2 = 28507};
if (isNil "A3L_lastUsedLayer3") then {A3L_lastUsedLayer3 = 29607};

_id = 2;
if (!isNil "_this") then
{
if (typeName _this == typeName []) then
{
_id = (_this select 0);
}
else
{
if (typeName _this == typeName 88) then
{
_id = _this;
};
};
};

switch _id do
{
case 1:
{
A3L_lastUsedLayer1 = A3L_lastUsedLayer1+1; 
_result = A3L_lastUsedLayer1;
};
case 3:
{
A3L_lastUsedLayer3 = A3L_lastUsedLayer3+1; 
_result = A3L_lastUsedLayer3;
};
default
{
A3L_lastUsedLayer2 = A3L_lastUsedLayer2+1; 
_result = A3L_lastUsedLayer2;
};
};


_result
};

A3L_fnc_messages_display = {




private ["_ctrl", "_text", "_block"];

if (isDedicated) exitWith {};
if (isNil "A3L_Messages_array") exitWith {};
disableSerialization;

_block = "";
for "_i" from 0 to (8 - 1) do
{
_text = (A3L_Messages_array select _i) select 0;
if (_text != "") then
{
_block = _block + _text + "<br />";
};
};

_ctrl = (uiNamespace getVariable ["A3L_messages_display", displayNull]) displayCtrl 100;
_ctrl ctrlSetStructuredText parseText _block;

};

A3L_Fnc_Msg = {




private ["_message", "_duration", "_hasDurationParam", "_i", "_id", "_params", "_subName", "_subText"];

if (isDedicated) exitWith {};
if (isNil "A3L_Messages_array") exitWith {};
disableSerialization;

_message = _this;
_duration = 15 ;
_hasDurationParam = false;
if (typeName _this == typeName []) then
{
_message = _this select 0;

if (count _this > 1) then
{
private "_dur";
_dur = _this select 1;
if (typeName _dur == typeName 99) then
{
_hasDurationParam = true;
if (_dur > 0 and _dur <= 30) then
{
_duration = _dur;
};
};
};
};
_message = _message call A3L_fnc_stripLinebreaks;
_message = _message call A3L_fnc_replaceAmpersands;

c_colorST_A2_text = "#FF99C578"; 
c_colorST_OA_text = "#FFE0D8A1"; 
c_colorST_orange = "#FFFF6A00"; 
c_colorST_red = "#FFD30000"; 
c_colorST_blue = "#00AEFF"; 
c_colorST_gray = "#FF808080"; 

if (typeName _this == typeName []) then
{
if (count _this == 3) then { 
msgcolour = _this select 2;

if (msgcolour == "green") then {
_message = format ["<t color='%1'>%2", c_colorST_A2_text,_message];
};

if (msgcolour == "yellow") then {
_message = format ["<t color='%1'>%2", c_colorST_OA_text,_message];
};

if (msgcolour == "orange") then {
_message = format ["<t color='%1'>%2", c_colorST_orange,_message];
};

if (msgcolour == "red") then {
_message = format ["<t color='%1'>%2", c_colorST_red,_message];
};

if (msgcolour == "blue") then {
_message = format ["<t color='%1'>%2", c_colorST_blue,_message];
};

if (msgcolour == "gray") then {
_message = format ["<t color='%1'>%2", c_colorST_gray,_message];
};

};
};















_i = 0;
while {_i < 8 - 1} do
{
A3L_Messages_array set [_i, A3L_Messages_array select (_i+1)];

_i = _i + 1;
};


_id = A3L_Messages_counter + 1;
A3L_Messages_counter = A3L_Messages_counter + 1;






A3L_Messages_array set [8 - 1, [_message, _id]];

call A3L_fnc_messages_display;

[_id, _duration] spawn
{
private ["_id", "_duration"];
_id = _this select 0;
_duration = _this select 1;


uiSleep _duration;



{
if (_x select 1 == _id) exitWith
{
A3L_Messages_array set [_forEachIndex, ["", -1]];
call A3L_fnc_messages_display;
};
} forEach A3L_Messages_array;
};
};


A3L_Messages_array = [];
A3L_Messages_counter = 0;

for "_i" from 0 to (8 - 1) do
{

A3L_Messages_array set [_i, ["", -1]];
};

[] spawn
{
if (isDedicated) exitWith {};

_layer = 736713;
if (!isNil "A3L_fnc_requestLayer") then {_layer = [3, "MessagesList"] call A3L_fnc_requestLayer};

waitUntil {!isNull (findDisplay 46)};
_layer cutRsc ["A3L_Messages", "PLAIN"];

waitUntil {!isNil "A3L_fnc_messages_display"};
[] call A3L_fnc_messages_display;
};

//["Message system initialized succesfully!",10,"gray"] spawn domsg;
//uiSleep 3;
//["Welcome to ArmA 3 Life!",10,"green"] spawn domsg;