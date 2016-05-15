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
	case "187V": {_type = ["187V",6500]};
	case "187": {_type = ["187",20000]};
	case "901": {_type = ["901",4500]};
	case "261": {_type = ["261",5000]};
	case "261A": {_type = ["261A",3000]};
	case "215": {_type = ["215",2000]};
	case "213": {_type = ["213",10000]};
	case "211": {_type = ["211",1000]};
	case "207": {_type = ["207",3500]};
	case "207A": {_type = ["207A",2000]};
	case "390": {_type = ["390",15000]};
	case "487": {_type = ["487",1500]};
	case "488": {_type = ["488",700]};
	case "480": {_type = ["480",1300]};
	case "481": {_type = ["481",1000]};
	case "482": {_type = ["482",5000]};
	case "483": {_type = ["483",9500]};
	case "459": {_type = ["459",6500]};
	case "666": {_type = ["666",2000]};
	case "667": {_type = ["667",45000]};
	case "668": {_type = ["668",15000]};
	case "919": {_type = ["919",45000]};
	case "919A": {_type = ["919A",15000]};
	case "647": {_type = ["647",15000]};

	
	case "1": {_type = ["1",250]};
	case "2": {_type = ["2",350]};
    case "3": {_type = ["3",350]};
	case "4": {_type = ["4",1000]};
	case "5": {_type = ["5",25]};
	case "6": {_type = ["6",500]};
	case "7": {_type = ["7",125]};
	case "8": {_type = ["8",500]};
	case "9": {_type = ["9",150]};
	case "10": {_type = ["10",150]};
	case "11": {_type = ["11",500]};
	case "12": {_type = ["12",250]};
	case "13": {_type = ["13",250]};
	case "14": {_type = ["14",250]};
	case "15": {_type = ["15",500]};
	case "16": {_type = ["16",300]};
	case "17": {_type = ["17",750]};
	case "18": {_type = ["18",500]};
	case "19": {_type = ["19",500]};
	case "20": {_type = ["20",250]};
	case "21": {_type = ["21",25]};
	case "22": {_type = ["22",200]};
	case "23": {_type = ["23",500]};
	case "24": {_type = ["24",1000]};
	case "25": {_type = ["25",500]};
	case "26": {_type = ["26",1250]};
	case "27": {_type = ["27",750]};
	case "28": {_type = ["28",1000]};
	case "29": {_type = ["29",1250]};
	case "30": {_type = ["30",750]};
	case "31": {_type = ["31",4000]};
	case "32": {_type = ["32",750]};
	case "33": {_type = ["33",750]};
	case "34": {_type = ["34",750]};
	case "35": {_type = ["35",750]};
	case "36": {_type = ["36",1500]};
	case "37": {_type = ["37",500]};
	case "38": {_type = ["38",750]};
	case "39": {_type = ["39",250]};
	case "40": {_type = ["40",1750]};
	case "41": {_type = ["41",2750]};
	case "42": {_type = ["42",50]};
	case "43": {_type = ["43",250]};
	case "44": {_type = ["44",2500]};
	case "45": {_type = ["45",2500]};
	case "46": {_type = ["46",1250]};
	case "47": {_type = ["47",2000]};
	case "48": {_type = ["48",750]};
	case "49": {_type = ["49",125]};
	case "50": {_type = ["50",2500]};
	case "51": {_type = ["51",150]};
	case "52": {_type = ["52",750]};
	case "53": {_type = ["53",2500]};
	case "54": {_type = ["54",7500]};
	case "55": {_type = ["55",1000]};
	case "56": {_type = ["56",375]};
	case "57": {_type = ["57",375]};
	case "58": {_type = ["58",750]};
	case "59": {_type = ["59",1000]};
	case "60": {_type = ["60",250]};
	case "61": {_type = ["61",375]};
	case "62": {_type = ["62",750]};
	case "63": {_type = ["63",1250]};
	case "64": {_type = ["64",250]};
	case "65": {_type = ["65",250]};
	case "66": {_type = ["66",1500]};
	case "67": {_type = ["67",750]};
	case "68": {_type = ["68",425]};
	case "69": {_type = ["69",50]};
	case "70": {_type = ["70",3750]};
	case "71": {_type = ["71",2500]};
	case "72": {_type = ["72",1750]};
	case "73": {_type = ["73",1000]};
	case "74": {_type = ["74",1000]};
	case "75": {_type = ["75",250]};
	case "76": {_type = ["76",1500]};
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
	_query = format["UPDATE wanted SET wantedCrimes = '%1', wantedBounty = wantedBounty + '%2', active = '1' WHERE wantedID='%3'",_pastCrimes,_val,_uid];
} else {
	_crimes = [[(_type select 0)]] call DB_fnc_mresArray;
	_query = format["INSERT INTO wanted (wantedID, wantedName, wantedCrimes, wantedBounty, active) VALUES ('%1','%2','%3','%4', '1')",_uid,_name,_crimes,_val];
};

if(!isNil "_query") then {
	[_query,2] call DB_fnc_asyncCall;
};
//What is the crime?
switch(_type) do
{
	
	case "187V": {_type = ["187V",6500]};
	case "187": {_type = ["187",20000]};
	case "901": {_type = ["901",4500]};
	case "261": {_type = ["261",5000]};
	case "261A": {_type = ["261A",3000]};
	case "215": {_type = ["215",2000]};
	case "213": {_type = ["213",10000]};
	case "211": {_type = ["211",1000]};
	case "207": {_type = ["207",3500]};
	case "207A": {_type = ["207A",2000]};
	case "390": {_type = ["390",15000]};
	case "487": {_type = ["487",1500]};
	case "488": {_type = ["488",700]};
	case "480": {_type = ["480",1300]};
	case "481": {_type = ["481",1000]};
	case "482": {_type = ["482",5000]};
	case "483": {_type = ["483",9500]};
	case "459": {_type = ["459",6500]};
	case "666": {_type = ["666",2000]};
	case "667": {_type = ["667",45000]};
	case "668": {_type = ["668",15000]};
	case "919": {_type = ["919",45000]};
	case "919A": {_type = ["919A",15000]};
	case "647": {_type = ["647",15000]};
	
	
	case "1": {_type = ["1",2500]};
	case "2": {_type = ["2",7500]};
    case "3": {_type = ["3",0]};
	case "4": {_type = ["4",1500]};
	case "5": {_type = ["5",1500]};
	case "6": {_type = ["6",5000]};
	case "7": {_type = ["7",7500]};
	case "8": {_type = ["8",5000]};
	case "9": {_type = ["9",3500]};
	case "10": {_type = ["10",1500]};
	case "11": {_type = ["11",1500]};
	case "12": {_type = ["12",1500]};
	case "13": {_type = ["13",3000]};
	case "14": {_type = ["14",2000]};
	case "15": {_type = ["15",15000]};
	case "16": {_type = ["16",25000]};
	case "17": {_type = ["17",7500]};
	case "18": {_type = ["18",5000]};
	case "19": {_type = ["19",15000]};
	case "20": {_type = ["20",50000]};
	case "21": {_type = ["21",10000]};
	case "22": {_type = ["22",10000]};
	case "23": {_type = ["23",10000]};
	case "24": {_type = ["24",15000]};
	case "25": {_type = ["25",0]};
	case "26": {_type = ["26",2000]};
	case "27": {_type = ["27",4000]};
	case "28": {_type = ["28",6000]};
	case "29": {_type = ["29",5000]};
	case "30": {_type = ["30",25000]};
	case "31": {_type = ["31",25000]};
	case "32": {_type = ["32",50000]};
	case "33": {_type = ["33",0]};
	case "34": {_type = ["34",0]};
	case "35": {_type = ["35",50000]};
	case "36": {_type = ["36",5000]};
	case "37": {_type = ["37",5000]};
	case "38": {_type = ["38",2500]};
	case "39": {_type = ["39",0]};
	case "40": {_type = ["40",0]};
	case "41": {_type = ["41",0]};
	case "42": {_type = ["42",0]};
	case "43": {_type = ["43",10000]};
	case "44": {_type = ["44",100000]};
	case "45": {_type = ["45",50000]};
	case "46": {_type = ["46",35000]};
	case "47": {_type = ["47",50000]};
	case "48": {_type = ["48",0]};
	case "49": {_type = ["49",25000]};
	case "50": {_type = ["50",30000]};
	case "51": {_type = ["51",30000]};
	case "52": {_type = ["52",100000]};
	case "53": {_type = ["53",50000]};
	case "54": {_type = ["54",35000]};
	case "55": {_type = ["55",50000]};
	case "56": {_type = ["56",0]};
	case "57": {_type = ["57",0]};
	case "58": {_type = ["58",20000]};
	case "59": {_type = ["59",5000]};
	case "60": {_type = ["60",75000]};
	case "61": {_type = ["61",25000]};
	case "62": {_type = ["62",0]};
	case "63": {_type = ["63",0]};
	case "64": {_type = ["64",0]};
	case "65": {_type = ["65",0]};
	case "66": {_type = ["66",0]};
	case "67": {_type = ["67",0]};
	case "68": {_type = ["68",0]};
	case "69": {_type = ["69",15000]};
	case "70": {_type = ["70",0]};
	case "71": {_type = ["71",0]};
	case "72": {_type = ["72",15000]};
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