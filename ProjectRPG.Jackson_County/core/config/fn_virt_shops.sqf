/*
	File: fn_virt_shops.sqf
	
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "phones": {["Phones",["nos"]]};
	case "market": {["Market",["medkit","condom","bandage","tierope","bec","cigarette","lockpick","fuelF","boltcutter","storagesmall","storagebig"]]};
	case "food": {["Market",["water","rabbit","apple","redgull","tbacon","peach"]]};
	case "drinks": {["Drinks",["cigarette","zoobeer","zoobeer2","vodka","jagerbomb","absinthe","redwine","whiterussian","sexonthebeach","tequila","jackdanielsandcoke","Rax's Rum","water","redgull"]]};
	case "rebel": {["Rebel Market",["tierope","bandage","RoadBlockConc","water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","hackingtool","tracker"]]};
	case "gang": {["Gang Market", ["bandage","water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Starbugz Coffee Club",["coffee"]]};
	case "heroin": {["Drug Dealer",["marijuana","cokep","cokeu","methp","methu","MDMAp","MDMAu","krokp"]]};
	case "gems": {["Gem Dealer",["sapphire","ruby","emerald"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "farmingmarket": {["Market",["wheat","sunflower","corn","bean","cotton","olive","opium","cannabis","pumpkin"]]};	
	case "glass": {["Glass Dealer",["glass"]]};
	case "iron": {["Industrial Trader",["iron_r","copper_r","silberp","titanp"]]};
	case "diamond": {["Diamond Dealer",["weddingring","diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["coffee","donuts","panicbutton","fuelF","defusekit","RoadBlockWood","RoadCone","RoadConeStrip","RoadConeB","RoadConeStripB","tracker","Blaulicht"]]};
	case "udc": {["UDC Item Shop",["coffee","donuts","panicbutton","fuelF","defusekit","RoadBlockWood","RoadCone","RoadConeStrip","RoadConeB","RoadConeStripB","Blaulicht","tracker"]]};
	case "donuts": {["Dunkin's Bronuts",["donuts","coffee","water","redgull"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
	case "ems": {["EMS Item Shop",["airkit","panicbutton","coffee","donuts","bec","water","rabbit","apple","redgull","tbacon","peach","RoadBlockWood","RoadCone","RoadConeStrip","RoadConeB","RoadConeStripB","bandage","fuelF"]]};
	case "butcher": {["Bob's Flesh'n Besh",["Raw Meat"]]};
	case "gummi": {["Gummi Händler",["gummip"]]};
};


