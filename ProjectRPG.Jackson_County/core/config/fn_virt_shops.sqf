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
	case "market": {["Market",["medkit","condom","bandage","water","tierope","bec","cigarette","rabbit","apple","redgull","tbacon","lockpick","fuelF","peach","boltcutter","storagesmall","storagebig"]]};
	case "drinks": {["Drinks",["cigarette","zoobeer","zoobeer2","vodka","jagerbomb","absinthe","redwine","whiterussian","sexonthebeach","tequila","jackdanielsandcoke","Rax's Rum","water","redgull"]]};
	case "rebel": {["Rebel Market",["tierope","bandage","RoadBlockConc","water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","hackingtool"]]};
	case "gang": {["Gang Market", ["bandage","water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["marijuana","cokep","cokeu","methp","methu","MDMAp","MDMAu"]]};
	case "gems": {["Gem Dealer",["sapphire","ruby","emerald"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "farmingmarket": {["Market",["wheat","sunflower","corn","bean","cotton","olive","opium","cannabis","pumpkin"]]};	
	case "glass": {["Glass Dealer",["glass"]]};
	case "iron": {["Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["weddingring","diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["medkit","panicbutton","bandage","fuelF","defusekit","BarGate","RoadBlockWood","RoadCone","RoadConeStrip","RoadConeB","RoadConeStripB"]]};
	case "donuts": {["Dunkin's Bronuts",["donuts","coffee","water","redgull"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
	case "ems": {["EMS Item Shop",["airkit","panicbutton","condom","bec","water","rabbit","apple","redgull","tbacon","peach","RoadBlockWood","RoadCone","RoadConeStrip","RoadConeB","RoadConeStripB"]]};
	case "butcher": {["Bob's Flesh'n Besh",["Raw Meat"]]};
};


