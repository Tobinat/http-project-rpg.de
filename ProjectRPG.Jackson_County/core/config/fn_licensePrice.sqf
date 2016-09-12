/*
	File: fn_licensePrice.sqf
	
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = param [0,"",[""]];
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "MDMA": {15000};
	case "meth": {15000};
	case "coke": {15000};
	case "driver": {300}; //Drivers License cost
	case "boat": {1500}; //Boating license cost
	case "pilot": {1500}; //Pilot/air license cost
	case "gun": {5000}; //Firearm/gun license cost
	case "dive": {400}; //Diving license cost
	case "oil": {5000}; //Oil processing license cost
	case "cair": {1500}; //Cop Pilot License cost
	case "swat": {3500}; //Swat License cost
	case "cg": {800}; //Coast guard license cost
	case "heroin": {10000}; //Heroin processing license cost
	case "marijuana": {10000}; //Marijuana processing license cost
	case "medmarijuana": {11000}; //Medical Marijuana processing license cost
	case "gang": {1000}; //Gang license cost
	case "rebel": {200000}; //Rebel license cost
	case "truck": {5000}; //Truck license cost
	case "diamond": {8000};
	case "salt": {1200};
	case "cocaine": {15000};
	case "sand": {1450};
	case "iron": {1500};
	case "copper": {1000};
	case "cement": {1000};
	case "mair": {1500};
	case "mdive": {1500};
	case "home": {10000};
	
	case "rifle": {2000};
	case "bank": {1500};
	
	case "silber": {1500};
	case "titan": {2000};
	case "gummi": {1000};
	case "krok": {15000};
};