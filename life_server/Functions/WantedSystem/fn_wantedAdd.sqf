/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine"
	Database Persistence By: ColinM
	Assistance by: Paronity
	Stress Tests by: Midgetgrimm
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name","_pastCrimes","_query","_queryResult"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
	case "187V": {_type = ["187V",9500]};
	case "187": {_type = ["187",9500]};
	case "901": {_type = ["901",20000]};
	case "261": {_type = ["261",8000]};
	case "261A": {_type = ["261A",6000]};
	case "215": {_type = ["215",5000]};
	case "213": {_type = ["213",10000]};
	case "211": {_type = ["211",10000]};
	case "207": {_type = ["207",25000]};
	case "207A": {_type = ["207A",16000]};
	case "390": {_type = ["390",4500]};
	case "487": {_type = ["487",5500]};
	case "488": {_type = ["488",4400]};
	case "480": {_type = ["480",5300]};
	case "481": {_type = ["481",6000]};
	case "482": {_type = ["482",6000]};
	case "483": {_type = ["483",20000]};
	case "459": {_type = ["459",6500]};
	case "666": {_type = ["666",7000]};
	case "667": {_type = ["667",30000]};
	case "668": {_type = ["668",15000]};
	case "919": {_type = ["919",45000]};
	case "919A": {_type = ["919A",15000]};
	case "647": {_type = ["647",6500]};

	
	case "1": {_type = ["1",10000]};
	case "2": {_type = ["2",10000]};
    case "3": {_type = ["3",10000]};
	case "4": {_type = ["4",5000]};
	case "5": {_type = ["5",4000]};
	case "6": {_type = ["6",5000]};
	case "7": {_type = ["7",5000]};
	case "8": {_type = ["8",5000]};
	case "9": {_type = ["9",1500]};
	case "10": {_type = ["10",5000]};
	case "11": {_type = ["11",6500]};
	case "12": {_type = ["12",5000]};
	case "13": {_type = ["13",10000]};
	case "14": {_type = ["14",2500]};
	case "15": {_type = ["15",5000]};
	case "16": {_type = ["16",10000]};
	case "17": {_type = ["17",10000]};
	case "18": {_type = ["18",20000]};
	case "19": {_type = ["19",5000]};
	case "20": {_type = ["20",2500]};
	case "21": {_type = ["21",5000]};
	case "22": {_type = ["22",5000]};
	case "23": {_type = ["23",5000]};
	case "24": {_type = ["24",5000]};
	case "25": {_type = ["25",4000]};
	case "26": {_type = ["26",4000]};
	case "27": {_type = ["27",10000]};
	case "28": {_type = ["28",10000]};
	case "29": {_type = ["29",30000]};
	case "30": {_type = ["30",10000]};
	case "31": {_type = ["31",40000]};
	case "32": {_type = ["32",15000]};
	case "33": {_type = ["33",30000]};
	case "34": {_type = ["34",7500]};
	case "35": {_type = ["35",7500]};
	case "36": {_type = ["36",10000]};
	case "37": {_type = ["37",16000]};
	case "38": {_type = ["38",18000]};
	case "39": {_type = ["39",6000]};
	case "40": {_type = ["40",16000]};
	case "41": {_type = ["41",16000]};
	case "42": {_type = ["42",10000]};
	case "43": {_type = ["43",8000]};
	case "44": {_type = ["44",18000]};
	case "45": {_type = ["45",18000]};
	case "46": {_type = ["46",4000]};
	case "47": {_type = ["47",6000]};
	case "48": {_type = ["48",7500]};
	case "49": {_type = ["49",7500]};
	case "50": {_type = ["50",25000]};
	case "51": {_type = ["51",1500]};
	case "52": {_type = ["52",4000]};
	case "53": {_type = ["53",6500]};
	case "54": {_type = ["54",30000]};
	case "55": {_type = ["55",3000]};
	case "56": {_type = ["56",6000]};
	case "57": {_type = ["57",3700]};
	case "58": {_type = ["58",7500]};
	case "59": {_type = ["59",8000]};
	case "60": {_type = ["60",5000]};
	case "61": {_type = ["61",5000]};
	case "62": {_type = ["62",10000]};
	case "63": {_type = ["63",3000]};
	case "64": {_type = ["64",2000]};
	case "65": {_type = ["65",2500]};
	case "66": {_type = ["66",8000]};
	case "67": {_type = ["67",4000]};
	case "68": {_type = ["68",6500]};
	case "69": {_type = ["69",6000]};
	case "70": {_type = ["70",6000]};
	case "71": {_type = ["71",6000]};
	case "72": {_type = ["72",6000]};
	case "73": {_type = ["73",6000]};
	case "74": {_type = ["74",6000]};
	case "75": {_type = ["75",6000]};
	case "76": {_type = ["76",6000]};
	default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.

_result = format["SELECT wantedID, wantedCrimes FROM wanted WHERE wantedID='%1'",_uid];
_queryResult = [_result,2] call DB_fnc_asyncCall;

_name = [_name] call DB_fnc_mresString;
_val = [(_type select 1)] call DB_fnc_numberSafe;

if(count _queryResult != 0) then
{
	_pastCrimes = [(_queryResult select 1)] call DB_fnc_mresToArray;
	_pastCrimes pushBack (_type select 0);
	_pastCrimes = [_pastCrimes] call DB_fnc_mresArray;
	_query = format["UPDATE wanted SET wantedCrimes = '%1', wantedBounty = wantedBounty + '%2', active = '1' WHERE wantedID LIKE '%3'",_pastCrimes,_val,_uid];
} else {
	_crimes = [[(_type select 0)]] call DB_fnc_mresArray;
	
	diag_log format["ID: %1", _uid];
	diag_log format["NAME: %1", _name];
	diag_log format["CRIMES: %1", _crimes];
	diag_log format["BOUNTY: %1", _val];
	
	_query = format["INSERT INTO wanted (wantedID, wantedName, wantedCrimes, wantedBounty, active) VALUES ('%1','%2','%3','%4', '1')",_uid,_name,_crimes,_val];
	
	diag_log format["QUERY: %1", _query];
};

if(!isNil "_query") then {
	[_query,2] call DB_fnc_asyncCall;
};
//What is the crime?
switch(_type) do
{
	
	case "187V": {_type = ["187V",9500]};
	case "187": {_type = ["187",9500]};
	case "901": {_type = ["901",20000]};
	case "261": {_type = ["261",8000]};
	case "261A": {_type = ["261A",6000]};
	case "215": {_type = ["215",5000]};
	case "213": {_type = ["213",10000]};
	case "211": {_type = ["211",10000]};
	case "207": {_type = ["207",25000]};
	case "207A": {_type = ["207A",16000]};
	case "390": {_type = ["390",4500]};
	case "487": {_type = ["487",5500]};
	case "488": {_type = ["488",4400]};
	case "480": {_type = ["480",5300]};
	case "481": {_type = ["481",6000]};
	case "482": {_type = ["482",6000]};
	case "483": {_type = ["483",20000]};
	case "459": {_type = ["459",6500]};
	case "666": {_type = ["666",7000]};
	case "667": {_type = ["667",30000]};
	case "668": {_type = ["668",15000]};
	case "919": {_type = ["919",45000]};
	case "919A": {_type = ["919A",15000]};
	case "647": {_type = ["647",6500]};
	
	
	case "1": {_type = ["1",10000]};
	case "2": {_type = ["2",10000]};
    case "3": {_type = ["3",10000]};
	case "4": {_type = ["4",5000]};
	case "5": {_type = ["5",4000]};
	case "6": {_type = ["6",5000]};
	case "7": {_type = ["7",5000]};
	case "8": {_type = ["8",5000]};
	case "9": {_type = ["9",1500]};
	case "10": {_type = ["10",5000]};
	case "11": {_type = ["11",6500]};
	case "12": {_type = ["12",5000]};
	case "13": {_type = ["13",10000]};
	case "14": {_type = ["14",2500]};
	case "15": {_type = ["15",5000]};
	case "16": {_type = ["16",10000]};
	case "17": {_type = ["17",10000]};
	case "18": {_type = ["18",20000]};
	case "19": {_type = ["19",5000]};
	case "20": {_type = ["20",2500]};
	case "21": {_type = ["21",5000]};
	case "22": {_type = ["22",5000]};
	case "23": {_type = ["23",5000]};
	case "24": {_type = ["24",5000]};
	case "25": {_type = ["25",4000]};
	case "26": {_type = ["26",4000]};
	case "27": {_type = ["27",10000]};
	case "28": {_type = ["28",10000]};
	case "29": {_type = ["29",30000]};
	case "30": {_type = ["30",10000]};
	case "31": {_type = ["31",40000]};
	case "32": {_type = ["32",15000]};
	case "33": {_type = ["33",30000]};
	case "34": {_type = ["34",7500]};
	case "35": {_type = ["35",7500]};
	case "36": {_type = ["36",10000]};
	case "37": {_type = ["37",16000]};
	case "38": {_type = ["38",18000]};
	case "39": {_type = ["39",6000]};
	case "40": {_type = ["40",16000]};
	case "41": {_type = ["41",16000]};
	case "42": {_type = ["42",10000]};
	case "43": {_type = ["43",8000]};
	case "44": {_type = ["44",18000]};
	case "45": {_type = ["45",18000]};
	case "46": {_type = ["46",4000]};
	case "47": {_type = ["47",6000]};
	case "48": {_type = ["48",7500]};
	case "49": {_type = ["49",7500]};
	case "50": {_type = ["50",25000]};
	case "51": {_type = ["51",1500]};
	case "52": {_type = ["52",4000]};
	case "53": {_type = ["53",6500]};
	case "54": {_type = ["54",30000]};
	case "55": {_type = ["55",3000]};
	case "56": {_type = ["56",6000]};
	case "57": {_type = ["57",3700]};
	case "58": {_type = ["58",7500]};
	case "59": {_type = ["59",8000]};
	case "60": {_type = ["60",5000]};
	case "61": {_type = ["61",5000]};
	case "62": {_type = ["62",10000]};
	case "63": {_type = ["63",3000]};
	case "64": {_type = ["64",2000]};
	case "65": {_type = ["65",2500]};
	case "66": {_type = ["66",8000]};
	case "67": {_type = ["67",4000]};
	case "68": {_type = ["68",6500]};
	case "69": {_type = ["69",6000]};
	case "70": {_type = ["70",6000]};
	case "71": {_type = ["71",6000]};
	case "72": {_type = ["72",6000]};
	case "73": {_type = ["73",0]};
	case "74": {_type = ["74",0]};  
   	case "75": {_type = ["75",30000]};
	case "76": {_type = ["76",15000]};
	case "77": {_type = ["77",40000]};
	case "78": {_type = ["78",1]};
	case "79": {_type = ["79",1]};
	case "80": {_type = ["80",1]};
	case "81": {_type = ["81",100000]};
	case "82": {_type = ["82",50000]};
	case "83": {_type = ["83",35000]};
	case "84": {_type = ["84",50000]};
	default {_type = [];};
};